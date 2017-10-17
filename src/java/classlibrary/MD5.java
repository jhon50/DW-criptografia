/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classlibrary;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.xml.bind.DatatypeConverter;

/**
 *
 * @author jhonatan
 */
public class MD5 {
    public static String generateHash(String input) {
        String md5Hash = null;
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(input.getBytes());
            byte[] digest = md.digest();
            md5Hash = DatatypeConverter.printHexBinary(digest).toUpperCase();
            
        } catch (Exception e) {
            
        }
        return md5Hash;
    }
}
