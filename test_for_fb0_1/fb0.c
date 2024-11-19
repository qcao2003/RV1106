#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <unistd.h>
 
 
#define FBDEVICE "/dev/fb0"

int main(void)
{
    //Init fb
    int disp_flag = 0;
    int pixel_size = 0;
    size_t screensize = 0;
    int disp_width = 0;
    int disp_height = 0;
    void* framebuffer = NULL; 
    struct fb_fix_screeninfo fb_fix;
    struct fb_var_screeninfo fb_var;

    int fb = open("/dev/fb0", O_RDWR); 
    if(fb == -1)
        printf("Screen OFF!\n");
    else 
        disp_flag = 1;

    if(disp_flag){
        ioctl(fb, FBIOGET_VSCREENINFO, &fb_var);
        ioctl(fb, FBIOGET_FSCREENINFO, &fb_fix);

        disp_width = fb_var.xres;
        disp_height = fb_var.yres;
        pixel_size = fb_var.bits_per_pixel / 8;
        printf("Screen width = %d, Screen height = %d, Pixel_size = %d\n",disp_width, disp_height, pixel_size);

        screensize = disp_width * disp_height * pixel_size;
        framebuffer = (uint8_t*)mmap(NULL, screensize, PROT_READ | PROT_WRITE, MAP_SHARED, fb, 0);
    }
    memcpy(framebuffer, 0XFFFF0000, disp_width * disp_height * pixel_size);
    close(fb);
    return 0;
}
 
 