CFLAGS = -I/opt/lib64 -w

L_LIBS = -L/opt/lib64 -lftd2xx -lusb -ldl -lrt
S_LIBS = /opt/lib64/libftd2xx.so /usr/lib/libusb.so -ldl -lpthread -lrt

OBJS = zjtag.o busbasp.o ftdixx.o j-link.o libusb.o stmhid.o

all: zjtag

zjtag: $(OBJS)
	gcc $(CFLAGS) -o zjtag $(OBJS) $(L_LIBS) $(DL_PATH) 

clean:
	rm -rf *.o *~ zjtag
