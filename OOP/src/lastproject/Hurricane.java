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
public class Hurricane extends Storms{
    private int temperature;
    public Hurricane(int wind,String name){
        super(wind,name);
        int t = 0;
        this.temperature= t;
    }
    public void determineClassification()
    {
       String Classification;
       if(WindSpeed>=74 && WindSpeed <95)
           Classification = "Category one";
       else if(WindSpeed>=96 && WindSpeed <110)
           Classification = "Category 2";
        else if(WindSpeed>=111 && WindSpeed <129)
            Classification = "Category 3";
        else if(WindSpeed>=130 && WindSpeed <156)
            Classification = "Category 4";
       else
           Classification = "Tropical Storm";
    super.setClassification(Classification);
}
     public void DetermineAlertMessage()
    {
    String AlertMessage;
    if(WindSpeed < 111)
        AlertMessage = "Close storm shutters and stay away from windows.";
    else if(WindSpeed>110 && WindSpeed <129)
        AlertMessage = "Costal regions are encouraged to evacuate";
    else
        AlertMessage = "evacuate";
    super.setAlertMessage(AlertMessage);    
}

    @Override
    public String toString() {
        return "Hurricane{" + '}' + super.getName() + super.getAlertMessage() + super.getClassification();
    }
}
