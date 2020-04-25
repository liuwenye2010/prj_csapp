#include <stdio.h>

int fun_0(void)
{
    printf("%s: %d\n", __FUNCTION__, __LINE__);
    return 0;
}

int fun_1(void)
{
    printf("%s: %d\n", __FUNCTION__, __LINE__);
    return 0;
}

int fun_2(void)
{
    printf("%s: %d\n", __FUNCTION__, __LINE__);
    return 0;
}

int fun_3(void)
{
    printf("%s: %d\n", __FUNCTION__, __LINE__);
    return 0;
}

long sum(long *start ,long count)
{
	long sum =0; 
	while(count){
		
		sum +=*start; 
		start++; 
		count--; 
	}
	return sum; 
}

int main(void)
{
	    long a[10]={1,2,3,4,5,6,7,8,9,10};
		long b=0; 
        fun_0();
        fun_3();
		sum(a,10); 
		printf("sum:%d\n",b); 
		return 0; 
}

