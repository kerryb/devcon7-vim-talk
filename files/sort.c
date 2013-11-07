/*
 *  InsertionSort
 *
 *  20.11.1998, implemented by Michael Neumann (neumann@s-direktnet.de)
 */

# ifndef __INSERTIONSORT_HEADER__
# define __INSERTIONSORT_HEADER__

# include <algorithm>

template <class itemType, class indexType=int>
void InsertionSort(itemType a[], indexType l, indexType r)
{
  static indexType i, j;
  static itemType v;

  for(i=l+1; i<=r; ++i) {
    for(j=i-1, v=a[i]; j>=l && a[j]>v; a[j+1]=a[j], --j);
    a[j+1] = v;
  }
}

# endif
