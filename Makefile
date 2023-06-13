main: main.c ioctl
	gcc -Wall main.c `pkg-config fuse3 --cflags --libs` -o main 

ioctl: ioctl.c ioctl.h
	gcc -Wall ioctl.c `pkg-config fuse3 --cflags --libs` -o ioctl
