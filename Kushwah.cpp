#include<stdio.h>

int main() {
   
    int s,n,i,fact,j,num,a,r;
     printf("Enter the Starting Number");
     scanf("%d",&s);
     if(s<2)
     s = 2;
     printf("Enter the Ending Number");
     scanf("%d",&n);
    printf("Prime Numbers are: \n");
    for(i=s; i<=n; i++)
    {
        fact=1;
        for(j=2; j<=i/2; j++)
        {
            if(i%j==0){
                fact = 0;
                break;
    		}
        }
        if(fact == 1){
            num=i;
                r =0;
    		   while(num>0)
    		   {
    			a=num%10;
    			r=r*10+a;
    			num=num/10;
    		   }
    		   
    		  if(i==r){
    		  printf("%d\t",r);
    		  }
        }
    }

}