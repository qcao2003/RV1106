test: main.o sub.o
	arm-rockchip830-linux-uclibcgnueabihf-g++ -Wall -g $^ -o $@

sub.o:sub.cpp
	arm-rockchip830-linux-uclibcgnueabihf-g++ -Wall -g -c $< -o $@

main.o:main.cpp
	arm-rockchip830-linux-uclibcgnueabihf-g++ -Wall -g -c $< -o $@

clean:
	rm -f *.o test