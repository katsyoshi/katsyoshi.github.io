int fibo(int x);
int sum(int x, int y);
int _sum(int x);

int fibo(int x)
{
  if(x <= 1) return x;
  else return fibo(x-1) + fibo(x - 2);
}

int sum(int x, int y)
{
  int mini, max;
  mini = max = x;
  if (x > y) { mini = y; }
  else { max = y; }

  return _sum(max) - _sum(mini);
}

int _sum(int x)
{
  return (1 + x)*x/2;
}
