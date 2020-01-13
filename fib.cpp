// Returns the nth fib number
#include <stdio.h>
class fib
{
public:
  fib(){};
  ~fib(){};
  short int getValue(short int n)
  {
    if( n<=1 ) return n;
    return( getValue(n-1) + getValue(n - 2));
  };
  short int v;  
};


int main()
{
  fib * f1 = new fib();
  printf( "The %dth fib number is: %d\n", 10, f1->getValue(10) );
  delete f1;
  return(0);
}
