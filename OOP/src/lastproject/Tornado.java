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
public class Tornado extends Storms{
private int temperature;
    public Tornado(int Wind,String name){
        super(Wind,name);
    int t = 0;
        this.temperature=t;
    }
    public void determineClassification()
    {
       String Classification;
       if(WindSpeed>=40 && WindSpeed <=72)
           Classification = "F0";
       else if(WindSpeed>=73 && WindSpeed <=112)
           Classification = "F1";
       else if(WindSpeed>=113 && WindSpeed <=157)
           Classification = "F2";
       else if(WindSpeed>=158 && WindSpeed <=205)
           Classification = "F3";
       else if(WindSpeed>=206 && WindSpeed <=260)
           Classification = "F4";
       else if(WindSpeed>=261)
           Classification = "F5";
       else
           Classification = "Unclassified";
    super.setClassification(Classification);
}
    public void DetermineAlertMessage()
    {
    String AlertMessage;
    if(WindSpeed>=40 && WindSpeed <112)
        AlertMessage = "Find safe room/shelter,shield yourself from debris";
    else if(WindSpeed>112)
        AlertMessage = "Find underground shelter, crouch near to the floor covering your head with your hands";
    else
        AlertMessage = "there is no need to panic";
    super.setAlertMessage(AlertMessage);    
}

    @Override
    public String toString() {
        return "Tornado{" + '}' + super.getName() + super.getAlertMessage() + super.getClassification();
    }
    
}

