import java.io.*;
import java.util.Scanner;
import java.util.*;

/* Doing this one in java mostly to refresh my memory
 * of how to properly program in Java
 */

public class Prob22 
{
  public static void main(String[] args) throws Exception
  {
	  String inLine;
	  BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
    String curLine = stdin.readLine();
    String[] names = curLine.split("\",\"");
    java.util.Arrays.sort(names);
    int i = 1;
    int sum = 0;
    for (String item:names) {
      char[] chars = item.toCharArray();
      int nameSum=0;
      for(char c:chars) {
        nameSum+=(int) c - ((int) 'A')+1;
      }
      sum += nameSum*i++;
    }
    System.out.println(sum);
  }
}
