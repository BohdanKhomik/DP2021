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
public class FilmsCollection extends AbstractFilmCollection {

    public FilmsCollection(Map<String, String> films ) {
        this.films = films;
                
        
    }

    
    
    @Override
    public String getFilmInfo(GanreInterface ganre) {
        return "If you want to see film, you can see somemething like : " + films.get(ganre.getName());
    }
    
}
