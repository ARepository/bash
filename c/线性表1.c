#include <stdio.h>
int main()
{
  int a[3]={1,2,3};
  int b[4]={1,2,3,4};
}

void unionL(List *La, list Lb)
{
  int la_len,lb_len,i;
  ElemType e;
  la-len = ListLength (*La);
  la-len = ListLength (*Lb);

  for ( i=1;i<=Lb_len;i++)
  {
    GetElem (Lb,i,&e);
    if (!LocateElem(*La,e))
    {
      ListInsert(la,++La_len,e);
    }


