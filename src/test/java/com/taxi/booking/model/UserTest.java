package com.taxi.booking.model;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class UserTest {
 @Test
 void userBeanTest(){
   User u=new User();
   u.setUsername("admin");
   u.setPassword("pwd");
   assertEquals("admin",u.getUsername());
   assertEquals("pwd",u.getPassword());
 }
}
