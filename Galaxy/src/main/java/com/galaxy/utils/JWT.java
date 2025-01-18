package com.galaxy.utils;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.security.Key;
import java.util.Date;

import static javax.crypto.Cipher.SECRET_KEY;

public class JWT {
    private static final String KEY = "Elysia";

    public static String generateToken(String username) {
        String token = Jwts.builder()
                .setSubject(username)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + 3600000)) // 设置过期时间，1小时
                .signWith(SignatureAlgorithm.HS256, KEY.getBytes())
                .compact();

        return token;
    }



    // 解析JWT
    public static String getUsernameFromToken(String token) {
        Jws<Claims> claims = Jwts.parser().setSigningKey(KEY).parseClaimsJws(token);
        return claims.getBody().getSubject();
    }
}
