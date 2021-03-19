/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;


/**
 *
 * @author ПК
 */
public class Config {
    
    private static final String dbURL   = "jdbc:postgresql://obrii.org:5432/db2021mit21s18";
    private static final String dbUserName   = "s18";
    private static final String dbPassword   = "7803";

    public static String getURL() { return dbURL; }
    public static String getDbUser() { return dbUserName; }
    public static String getDbPass() { return dbPassword; }
}
