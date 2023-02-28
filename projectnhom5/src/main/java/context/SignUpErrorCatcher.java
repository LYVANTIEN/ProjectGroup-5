/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import dao.DAO;
import entity.Account;

/**
 *
 * @author NGO VU HUY
 */
public class SignUpErrorCatcher {
    public static String usernameErrorExisted(String username){
        String errorMessage = null;
           Account user = null;
            DAO dao = new DAO();
            try {
                 user = dao.checkAccountExits(username);
            } catch (Exception e) {
            }
            if(user !=null){
                errorMessage = username + " Has been existed!";
            }
        return errorMessage;
    }
    public static String usernameErrorLength(String username){
        String errorMessage = null;
        if(username.length() == 0 ){
            errorMessage ="Please type Username";
        }
        else if(username.length() < 6){
           errorMessage = username + " is too short (Must be at least 6 Characters).";
        } else if (username.length() > 20){
            errorMessage = username + " is too long (Must be at most 20 Characters).";
        }
         return errorMessage;
    }
    public static String passwordError(String password){
        String errorMessage = null;
         if(password.length() == 0 ){
            errorMessage ="Please type Password";
        }
         else if(password.length() < 6){
           errorMessage =" Password is too short (Must be at least 6 Characters).";
        } else if (password.length() > 20){
            errorMessage=" Password is too long (Must be at most 20 Characters).";
        }
         return errorMessage;
    }
     public static String confirmError(String password, String repass){
        String errorMessage = null;
        if(!password.equals(repass)){
           errorMessage = " Password and Repass that you typed are not matched.";
        }
         return errorMessage;
    }
}
