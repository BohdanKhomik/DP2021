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
public abstract class ChildNewAbstractDisplay extends Display implements NewDisplayInterface {
    
    public ChildNewAbstractDisplay(UserInterface userInterface) {
        super(userInterface);
    }
    
}
