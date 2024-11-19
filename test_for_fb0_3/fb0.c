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
#include "draw.h"
 
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
    pixel_size = vinfo.bits_per_pixel / 8;
    screensize = vinfo.xres_virtual * vinfo.yres_virtual * pixel_size;
    /*建立mmap映射*/
    pfb = (uint16_t*)mmap(NULL, screensize, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    // pfb = mmap(NULL, finfo.smem_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (NULL == pfb)
    {
        perror("mmap");
        return -1;
    }
    printf("x : %d \n",vinfo.xres_virtual);
    printf("y : %d \n",vinfo.yres_virtual);
    printf("finfo_len : %d \n",finfo.smem_len);
    printf("pfb :0x%X \n", (uint32_t)&pfb);

    draw_back(pfb, vinfo.xres_virtual, vinfo.yres_virtual, CYAN);
    draw_vline(pfb, vinfo.xres_virtual, 50, RED);


    close(fd);
    return 0;
}
 