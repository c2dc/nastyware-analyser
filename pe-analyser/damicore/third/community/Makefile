CC = gcc

CPP_FLAGS =         
CFLAGS    = -Wall -std=c99 -Wunused -D_POSIX -D_GNU_SOURCE
LD_FLAGS  = -lm

executable1 = community-conv
sources1 = community-conv.c

executable2 = community
sources2 = newman.c community.c
#############################################################

objects1 = $(sources1:.c=.o)
objects2 = $(sources2:.c=.o)

all: $(executable1) $(executable2)


%.o: %.c
	$(CC) $(CFLAGS) $(CPP_FLAGS) -c $<

$(executable1) : $(objects1)
	$(CC) $(LDFLAGS) $(objects1) $(LD_FLAGS) -o $(executable1)

$(executable2) : $(objects2)
	$(CC) $(LDFLAGS) $(objects2) $(LD_FLAGS) -o $(executable2)

.Makefile.dep: *.c
	@$(CC) $(CFLAGS) $(CPP_FLAGS) -MM *.c > $@

-include .Makefile.dep

##
# clean
#
.PHONY: clean

clean:
	@rm -f *.o \#* *~  .Makefile.dep
	rm -f $(executable1) $(executable2)
