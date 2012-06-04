package find;

import java.util.*;

public class Find {
    public static find_divides(int a, int b) {
    
        Date start = new Date();
        
        int y;
        for (int x = 0; x < 1000; x++) { 
            y = (b * x) / ((a * x) - b);
            if (y > 0) {
                System.out.println(String.format("%d ve %d kesrinin bölenleri 1/%d ve 1/%d\n",a,b,x,y));
            break;
            }
        }

        Date stop = new Date();
        
        long zaman = stop.getTime() - start.getTime ();
        System.out.println(String.format("%d milisaniye",zaman));
        
    } 
  
    public static void main(String[] args) {
        
        find_divides(2,7);
           
}