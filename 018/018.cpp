#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <vector>
#include <deque>
using namespace std;

int main()
{
  int nrows,num;
  cin >> nrows;
  deque <deque <int> > triangle;
  
  for(int i=0;i<nrows;i++) {
    deque <int> temp;
    for(int j=0;j<=i;j++) {
      cin >> num;
      temp.push_back(num);
    }
    triangle.push_front(temp);
  }

  deque <deque <int> > path;
  int lprev,rprev,newpath;
  for(int i=0;i<nrows;i++) {
    deque <int> temp;
    for(int j=0;j<nrows-i-1;j++) {
      if (i==0) {
        lprev=0;
        rprev=0;
      } else {
        lprev=path[i-1][j];
        rprev=path[i-1][j+1];
      }
      newpath = max(triangle[i][j]+lprev,triangle[i][j+1]+rprev);
      temp.push_back(newpath);
    }
    path.push_back(temp);
  }
  cout << "Maximum Value " << path[nrows-2][0]+triangle[nrows-1][0] << endl;
  return 0;
}
