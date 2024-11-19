#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <fcntl.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
 
#define FBDEVICE "/dev/fb0"

 
int main(void)
{
    int fd = -1;
    int ret = -1;
    void *pfb = NULL;
    struct fb_fix_screeninfo finfo;
    struct fb_var_screeninfo vinfo;
    int pixel_size = 0;
    size_t screensize = 0;
    int disp_width = 0;
    int disp_height = 0;
    // 初始化摄像头
    cv::VideoCapture cap;
    // 建立disp内存空间
    cv::Mat disp;
    // 建立Mat内存空间
    cv::Mat bgr;
    // 打开fb0设备
    fd = open(FBDEVICE, O_RDWR);
    if (fd < 0)
    {
        perror("open");
        return -1;
    }
    printf("open %s success \n", FBDEVICE);
 
    /*获取fb信息*/
    ret = ioctl(fd, FBIOGET_FSCREENINFO, &finfo);
    if (ret < 0)
    {
        perror("ioctl");
        return -1;
    }
 
    ret = ioctl(fd, FBIOGET_VSCREENINFO, &vinfo);
    if (ret < 0)
    {
        perror("ioctl");
        return -1;
    }
    disp_width = vinfo.xres;
    disp_height = vinfo.yres;
    pixel_size = vinfo.bits_per_pixel / 8;
    screensize = disp_width * disp_height * pixel_size;
    /*建立mmap映射*/
    pfb = (uint16_t*)mmap(NULL, finfo.smem_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);

    if (NULL == pfb)
    {
        perror("mmap");
        return -1;
    }
    printf("disp_width : %d \n",disp_width);
    printf("disp_height : %d \n",disp_height);
    printf("finfo_len : %d \n",finfo.smem_len);
    printf("pfb :0x%X \n", (uint32_t)&pfb);
    printf("pixel_size : %d \n",pixel_size);
    disp = cv::Mat(disp_width, disp_height, CV_16UC1); //RGB565
    bgr = cv::Mat(disp_width, disp_height, CV_8UC3); //RGB三通道无符号8位
    // 设置摄像头窗口
    cap.set(cv::CAP_PROP_FRAME_WIDTH, vinfo.xres);
    cap.set(cv::CAP_PROP_FRAME_HEIGHT, vinfo.yres);

    const int w = cap.get(cv::CAP_PROP_FRAME_WIDTH);
    const int h = cap.get(cv::CAP_PROP_FRAME_HEIGHT);
    fprintf(stderr, "%d x %d\n", w, h);
    // 打开摄像头
    cap.open(0);
    // 摄像头画面存到内存空间
    cap >> bgr;
    
    cv::cvtColor(bgr, disp, cv::COLOR_BGR2BGR565); //BGR to BGR565转换
    memcpy(pfb, disp.data, finfo.smem_len);
    while (1)
    {
        cap >> bgr;
        cv::cvtColor(bgr, disp, cv::COLOR_BGR2BGR565); //BGR to BGR565转换
        memcpy(pfb, disp.data, finfo.smem_len);
        cv::imwrite("captureFPS.jpg", bgr);
    }
    
    // 释放摄像头内存
    cap.release();
    cv::imwrite("capture.jpg", bgr);
    // 关闭fb0设备
    close(fd);
    return 0;
}
 