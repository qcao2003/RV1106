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
#include "draw.hpp"

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include <unistd.h>   // sleep()
#define FBDEVICE "/dev/fb0"

int main()
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
    cv::Mat bgr;
    cv::Mat disp;
    cv::VideoCapture cap;

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
    // pfb = (uint16_t*)mmap(NULL, screensize, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    pfb = (uint16_t*)mmap(NULL, screensize, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (NULL == pfb)
    {
        perror("mmap");
        return -1;
    }
    printf("screen width : %d \n",disp_width);
    printf("screen height : %d \n",disp_height);
    printf("finfo_len : %d \n",finfo.smem_len);
    printf("pfb :0x%X \n", (uint32_t)&pfb);
    
    disp = cv::Mat(disp_width, disp_height, CV_16UC1); //RGB565
    bgr = cv::Mat(disp_width, disp_height, CV_8UC3); //Cap
    cap.set(cv::CAP_PROP_FRAME_WIDTH, disp_width);
    cap.set(cv::CAP_PROP_FRAME_HEIGHT, disp_height);
    cap.open(0);
    const int w = cap.get(cv::CAP_PROP_FRAME_WIDTH);
    const int h = cap.get(cv::CAP_PROP_FRAME_HEIGHT);
    fprintf(stderr, "%d x %d\n", w, h);

    cap >> bgr;
    cv::putText(bgr,"Command",cv::Point(0, 20),
                cv::FONT_HERSHEY_SIMPLEX,0.5,
                cv::Scalar(0,255,0),1); //Show the topic on screen
    
    cv::cvtColor(bgr, disp, cv::COLOR_BGR2BGR565); //BGR to BGR565转换
    // draw_back((uint16_t*)pfb, vinfo.xres_virtual, vinfo.yres_virtual, CYAN);
    // draw_vline((uint16_t*)pfb, vinfo.xres_virtual, 50, RED);
    // memcpy(pfb, disp.data, finfo.smem_len);
    memcpy(pfb, disp.data, screensize);
    // cv::imwrite("capture.jpg", bgr);

    cap.release();
    close(fd);
    munmap(pfb, screensize);
    return 0;
}

