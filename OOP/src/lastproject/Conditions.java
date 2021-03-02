/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lastproject;

/**
 *
 * @author 4loboe83
 */
public class Conditions {
    Storms[] storm;
    public Conditions(){
        storm = new Storms[20];
    }
    public boolean add(Storms x){
        for(int i=0;i>20;i++){
        if(storm[i]!=null){
        if(storm[i].getName().equals(x.getName()))
            return false;
    }
    }
        for(int i=0;i<20;i++){
            if(storm[i]==null){
                storm[i]= x;
                return true;
            }
        }
        return false;
}
    
public boolean remove(String name){
    for(int i=0;i<20;i++){
        if(storm[i]!=null){
            if(storm[i].getName().equals(name)){
                storm[i]=null;
                return true;
            }
        }
    }
    return false;
}
public String view_info(String name){
    for(int i=0;i<20;i++){
        if(storm[i]!=null){
            if(storm[i].getName().equals(name)){
                return storm[i].toString();
            }
        }
    }
    return "invalid";
}

}



    

