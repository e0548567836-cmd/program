program: first_line.o first_line_data.o pass_two.o pass_one.o pass1.h 	 binary.o binary_for_ic_dc.o binary_for_ent_ext.o all_binary.h	insert.o insert.h	read_macro.o write_macro.o macro.h	program.o
	gcc -ansi -g -pedantic -Wall first_line.o first_line_data.o pass_two.o pass_one.o 	 binary.o binary_for_ic_dc.o binary_for_ent_ext.o 	insert.o 		read_macro.o write_macro.o 	program.o -o program
	
first_line.o: first_line.c pass1.h
	gcc -c -ansi -pedantic -Wall first_line.c -o first_line.o

first_line_data.o: first_line_data.c pass1.h
	gcc -c -ansi -pedantic -Wall first_line_data.c -o first_line_data.o

pass_two.o: pass_two.c pass1.h
	gcc -c -ansi -pedantic -Wall pass_two.c -o pass_two.o
pass_one.o: pass_one.c pass1.h
	gcc -c -ansi -pedantic -Wall pass_one.c -o pass_one.o



binary.o: binary.c all_binary.h
	gcc -c -ansi -pedantic -Wall binary.c -o binary.o
binary_for_ic_dc.o: binary_for_ic_dc.c all_binary.h
	gcc -c -ansi -pedantic -Wall binary_for_ic_dc.c -o binary_for_ic_dc.o
binary_for_ent_ext.o: binary_for_ent_ext.c all_binary.h
	gcc -c -ansi -pedantic -Wall binary_for_ent_ext.c -o binary_for_ent_ext.o

insert.o: insert.c insert.h 
	gcc -c -ansi -pedantic -Wall insert.c -o insert.o



read_macro.o: read_macro.c macro.h
	gcc -c -ansi -pedantic -Wall read_macro.c -o read_macro.o

write_macro.o: write_macro.c macro.h
	gcc -c -ansi -pedantic -Wall write_macro.c -o write_macro.o

program.o: program.c pass1.h
	gcc -c -ansi -pedantic -Wall program.c -o program.o





