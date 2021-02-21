/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;

import java.util.Map;

/**
 *
 * @author ПК
 */
public abstract class AbstractFilmCollection implements MovieInterface{
    protected Map<String, String> films ;
    
    
    @Override
    public String getFilmInfo()
    {
        return "OK. You don't want to see the film ";
    }
}
