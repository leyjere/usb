TEMPLATEROOT = ..

# compilation flags for gdb

CFLAGS  = -g -DHSE_VALUE=4000000
ASFLAGS = -g 
LDLIBS += -lm

# object files

OBJS=  $(STARTUP) main.o
OBJS+= usb_desc.o usb_endp.o usb_pwr.o usb_istr.o usb_prop.o stm32_it.o hw_config.o core_cm3.o misc.o \
	   stm32f10x_gpio.o stm32f10x_rcc.o stm32f10x_tim.o stm32f10x_exti.o usb_regs.o usb_init.o usb_core.o usb_sil.o usb_mem.o usb_int.o
	    

# include common make file

include $(TEMPLATEROOT)/Makefile.common
