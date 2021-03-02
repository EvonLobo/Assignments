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
public class Blizzard extends Storms{
private int temperature;
    public Blizzard(int Wind,String name,int t){
        super(Wind,name);
        this.temperature=t;
    }

    public void determineClassification()
    {
       String Classification;
       if(WindSpeed>=35 && WindSpeed <45)
           Classification = "Blizzard";
       else if(WindSpeed>45 && temperature <-12)
           Classification = "Severe Blizzard";
       else
           Classification = "Snow Storm";
    super.setClassification(Classification);
}
    public void DetermineAlertMessage()
    {
    String AlertMessage;
    if(WindSpeed>=35 && WindSpeed <45)
        AlertMessage = "Keep warm, Do not travel unless absolutely essential";
    else if(WindSpeed>45 && temperature <-12)
        AlertMessage = "Keep warm, avoid all travel";
    else
        AlertMessage = "Take care and avoid travel if possible";
    super.setAlertMessage(AlertMessage);    
}

    @Override
    public String toString() {
        return "Blizzard{" + '}' + super.getName() + super.getAlertMessage() + super.getClassification();
    }
    

}

    
