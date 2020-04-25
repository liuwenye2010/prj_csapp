#please try C:\Program Files (x86)\CodeBlocks\MinGW\bin

.PHONY=all clean 

all: main_normal main_dis main_s main_bin main_size

#src_file=main.c
#obj_file=$(addsuffix .o , $(basename $(src_file)))

main_sections:
	gcc -v -ffunction-sections -fdata-sections -c main.c
	gcc -v -Wl,--gc-sections -o $@ main.o 

main_normal:
	gcc -v -c main.c
	gcc -v -Wl,-Map=$@.map  -o $@ main.o

main_dis: main_normal
	objdump -D -S $< > $<.dis
	
main_s:
	gcc -v -S main.c

main_bin:  main_normal
	objcopy -v -S -g -O binary $<  $@
	
main_size: main_normal
	size -x $<  > $@
	
#main_elf_rpt: main_normal 
#	readelf -
	
clean:
	rm -rf *.o main_sections main_normal main_dis main_s main_size