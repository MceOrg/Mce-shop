package com.mce.shop.util;

import sun.misc.BASE64Encoder;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

public class TokenProccessor {
    public TokenProccessor() {
    }
    private static final TokenProccessor instance = new TokenProccessor();

    public static TokenProccessor getInstance(){
        return instance;
    }

    public String makeToken(){
        String token = (System.currentTimeMillis() + new Random().nextInt(999999999)) + "";
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("md5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        byte md5[] =  md.digest(token.getBytes());
        BASE64Encoder encoder = new BASE64Encoder();
        return encoder.encode(md5);
    }
}
