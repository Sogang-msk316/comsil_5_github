TARGET = app
SRCS = main.c calc.c
OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.0: %c
	$(CC) $(CFLAGS) -c $<

clean : 
	rm -f $(OBJS) $(TARGET)
