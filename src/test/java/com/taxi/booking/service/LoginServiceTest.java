package com.taxi.booking.service;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import com.taxi.booking.model.User;

public class LoginServiceTest {
 @Test
 void nullUserShouldFail(){
   LoginService s=new LoginService();
   assertFalse(s.authenticate(null));
 }
 @Test
 void emptyUserShouldFail(){
   LoginService s=new LoginService();
   User u=new User();
   u.setUsername("");
   u.setPassword("");
   assertFalse(s.authenticate(u));
 }
}
