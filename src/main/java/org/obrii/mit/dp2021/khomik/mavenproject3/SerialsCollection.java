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
public class SerialsCollection extends AbstractFilmCollection{

    public SerialsCollection(Map<String, String> films ) {
        this.films = films;
                
    }
    
    @Override
    public String getFilmInfo(GanreInterface ganre) {
        return "You gonna to see this serial : " + films.get(ganre.getName());
    }
    
}
