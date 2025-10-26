#include "all_binary.h"
int binary_ext_ent(FILE * binari_file, char * name , char * end)
{
	unsigned char mask = 1 << SIZE_OF_MASK;
	char final;
	int temp1=0;
	int temp2=0;
	int sum=0;
	char c;
	char * first_line;
	char * second_word;
	char line[82];
	int count_char=0;
	int flag_end=1;
	FILE * base_4_file;

	rewind(	binari_file);

	base_4_file=open_file(name, end,  WRITE);
	CHECK_NULL(base_4_file);


	while(!feof(binari_file) && flag_end)
	{
			if(!fgets(line, sizeof(line), binari_file))
				break;
			count_char=0;
			first_line=strtok(line, "\t");
			second_word=strtok(NULL, "\t");
			c=second_word[0];
			fputs( first_line,base_4_file);
			fputc('\t',base_4_file);
			mask = 1 << (sizeof(char)*8-1);
			while(mask && count_char<9)
			{
				if(c&mask)
				{
					temp1=2;
				}
				mask=mask>>1;
				if(c&mask)
				{
					temp2=1;
				}
	
				sum=temp1+temp2;
				if(sum==0)
					final='a';
				if(sum==1)
					final='b';
				if(sum==2)
					final='c';
				if(sum==3)
					final='d';
				mask=mask>>1;
				temp1=0;
				temp2=0;
				fprintf(base_4_file, "%c", final);
				if(count_char == 3)
				{

					
					fprintf(base_4_file, "\n");
					
				}
				
				count_char++;
			}
			
		
	
	}
	fclose(base_4_file);
	return 0;
	
}
