#ifndef _DRAW_H_
#define _DRAW_H_
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define RED 0XF800
#define BLACK 0x0000
#define WHITE 0xFFFF
#define GREEN 0x07E0
#define BLUE 0x001F
#define YELLOW 0xFFE0
#define CYAN 0x07FF
#define PURPLE 0xF81F
#define GREY 0x843C

void draw_back(uint16_t* pfb, unsigned int width, unsigned int height, unsigned int color);
void draw_line(uint16_t* pfb, unsigned int width, unsigned int height);
void draw_vline(uint16_t* pfb, unsigned int width, unsigned int x_local, unsigned int color);

#endif