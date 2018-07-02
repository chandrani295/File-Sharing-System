
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hp
 */
public class emailval {
    public void emailcheck(String s){
        char a[]=new char[20];
        int c=0,c1=0;
        for(int i=0;i<s.length();i++){
        a[i]=s.charAt(i);
        }
        for(int i=0;i<s.length();i++){
                if(a[i]=='@'){
            c++;
        }
        if(a[i]=='.'){
            c1++;
        }
            }
        if((c!=1)&(c1!=1)){
            System.out.println("Invalid EMail");
        } else {
            System.out.println("valid");
        }
        
    
    }
    public static void main(String args[]){
        Scanner sc=new Scanner(System.in);
        String s=sc.next();
        emailval e=new emailval();
        e.emailcheck(s);
    }
}
