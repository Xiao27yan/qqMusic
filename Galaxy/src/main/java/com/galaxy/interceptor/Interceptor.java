package com.galaxy.interceptor;

import com.galaxy.utils.JWT;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;

public class Interceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String token = request.getHeader("Authorization");
       try{
           JWT.generateToken(token);
            return true;
       }catch (Exception e){
           response.setStatus(401);
           return false;
       }
    }
}
