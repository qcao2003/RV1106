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
 
void capture(void)
{
    int fd = -1;
    int ret = -1;
    // 初始化摄像头
    cv::VideoCapture cap;
    cv::Mat bgr;

    bgr = cv::Mat(320, 240, CV_8UC3); //RGB三通道无符号8位
    // 设置摄像头窗口
    cap.set(cv::CAP_PROP_FRAME_WIDTH, 320);
    cap.set(cv::CAP_PROP_FRAME_HEIGHT, 240);

    const int w = cap.get(cv::CAP_PROP_FRAME_WIDTH);
    const int h = cap.get(cv::CAP_PROP_FRAME_HEIGHT);
    fprintf(stderr, "%d x %d\n", w, h);
    // 打开摄像头
    cap.open(0);
    // 摄像头画面存到内存空间
    cap >> bgr;
    
    // 释放摄像头内存
    cap.release();
    cv::imwrite("capture.jpg", bgr);

}

int main(void)
{
    capture();
    return 0;
}
 