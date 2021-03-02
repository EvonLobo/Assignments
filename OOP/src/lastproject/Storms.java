/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lastproject;

import java.util.Objects;

/**
 *
 * @author 4loboe83
 */
public abstract class Storms {
protected int WindSpeed;
protected String AlertMessage;
protected String Classification;
protected String name;

    public int getWindSpeed() {
        return WindSpeed;
    }

    public void setWindSpeed(int WindSpeed) {
        this.WindSpeed = WindSpeed;
    }

    public String getAlertMessage() {
        return AlertMessage;
    }

    public void setAlertMessage(String AlertMessage) {
        this.AlertMessage = AlertMessage;
    }

    public String getClassification() {
        return Classification;
    }

    public void setClassification(String Classification) {
        this.Classification = Classification;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Storms(int WindSpeed, String name) {
        this.WindSpeed = WindSpeed;
        this.name = name;
    }

    @Override
    public String toString() {
        return "Storms{" + "WindSpeed=" + WindSpeed + ", AlertMessage=" + AlertMessage + ", Classification=" + Classification + ", name=" + name + '}';
    }

  

    
}

