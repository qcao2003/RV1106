fb0: fb0.o draw.o
	arm-rockchip830-linux-uclibcgnueabihf-gcc -Wall -g $^ -o $@

fb0.o: fb0.c
	arm-rockchip830-linux-uclibcgnueabihf-gcc -Wall -g -c $< -o $@

draw.o: draw.c
	arm-rockchip830-linux-uclibcgnueabihf-gcc -Wall -g -c $< -o $@

clean:
	rm -f *.o fb0