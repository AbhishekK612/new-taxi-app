package com.taxi.booking.service;

import com.taxi.booking.model.User;

public interface AuthenticationService {
    boolean authenticate(User user);
}
