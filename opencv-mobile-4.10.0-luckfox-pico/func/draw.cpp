#include "draw.hpp"

void draw_back(uint16_t* pfb, unsigned int width, unsigned int height, unsigned int color)
{
    unsigned int x, y;
    for (y = 0; y < height; y++)
    {
        for (x = 0; x < width; x++)
        {
            *(pfb + y * width + x) = color;
        }
    }
}
 
void draw_line(uint16_t* pfb, unsigned int width, unsigned int height)
{
    unsigned int x, y;
    for (x = 50; x < width - 50; x++)
    {
        *(pfb + 50 * width + x) = 0xffff;
    }
    for (y = 50; y < height -50; y++)
    {
        *(pfb + y * width + 50) = 0xffff;
    }
}

void draw_vline(uint16_t* pfb, unsigned int width, unsigned int x_local, unsigned int color)
{
    for (unsigned int x = 0; x < width; x++)
    {
        *(pfb + x_local * width + x) = color;
        *(pfb + ((x_local+1) * width) + x) = color;
    }
}