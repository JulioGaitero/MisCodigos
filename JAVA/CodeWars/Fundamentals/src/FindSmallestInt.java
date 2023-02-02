import java.util.Arrays;
import java.util.OptionalInt;

public class FindSmallestInt {
    /* Given an array of integers your solution should find the smallest integer.
    For example:
    Given [34, 15, 88, 2] your solution will return 2
    Given [34, -345, -1, 100] your solution will return -345
    You can assume, for the purpose of this kata, that the supplied array will not be empty. */

    public static void main(String[] args) {

        int[] arrayInts = {34, -345, -1, 100};

        System.out.println(findSmallestInt(arrayInts));
    }

    public static int findSmallestInt(int[] args) {
       int numeroMenor = 0;
       for (int i = 0; i < args.length; i++) {
           if (i == 0){
              numeroMenor = args[0];
           }else {
               if (args[i] < numeroMenor){
                   numeroMenor = args[i];
               }
           }
       }
        return numeroMenor;
    }
}

