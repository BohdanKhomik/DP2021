/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3.display;
import org.obrii.mit.dp2021.khomik.mavenproject3.user.UserInterface;
/**
 *
 * @author ПК
 */
public class Display implements OldDisplayInterface {
    private UserInterface userInterface;
    
    public Display (UserInterface userInterface) {
        this.userInterface = userInterface;
    }
    
    public UserInterface getUserInterface() {
        return userInterface;
    }
    
    public void setUserInterface(UserInterface userInterface) {
        this.userInterface = userInterface;
    }
    
    @Override
    public String getMessage() {
        return "Dear " + userInterface.getName() + ", this message is from PARENT method.";
    }
}
