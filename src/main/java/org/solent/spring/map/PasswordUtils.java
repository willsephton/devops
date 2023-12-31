/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.solent.spring.map;

import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author thesu
 */
public class PasswordUtils {
    public static String hashPassword(String password){
        return BCrypt.hashpw(password, BCrypt.gensalt(12));              
    }
    
    public static boolean checkPassword(String password, String hashed){
        return BCrypt.checkpw(password, hashed);
    }
}
