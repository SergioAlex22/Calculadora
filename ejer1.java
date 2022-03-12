/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Parcial1;
import java.util.*;
/**
 *
 * @author SERGIO ALEXANDER
 */
public class ejer1{
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        int vect[] = new int[4];
        double media = 0;
        int mayor=0,suma=0;
        //lectura de datos y llenar el array
        System.out.println("Ingrese 4 numeros: ");
        for (int i = 0; i <vect.length; i++) {
            vect[i] = sc.nextInt();
        }

        //Recorrer el array y hallar el mayor
        for (int i = 0; i <vect.length; i++) {
            if(vect[i]>mayor){
                mayor=vect[i];
            }
            }
        
        for (int i=0;i<vect.length;i++){
            suma+=vect[i];
            media=suma/4;
        }
        
        System.out.println("El mayor es: "+mayor+"\nLa suma es: "+suma+"\nLa media es: "+media);
        }
     
    }


