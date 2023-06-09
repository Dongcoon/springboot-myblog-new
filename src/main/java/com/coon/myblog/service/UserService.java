package com.coon.myblog.service;

import com.coon.myblog.model.RoleType;
import com.coon.myblog.model.User;
import com.coon.myblog.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder encoder;

    @Transactional
    public Boolean 회원가입(User user){
        String rawPassword = user.getPassword();
        String hashPassword = encoder.encode(rawPassword);

        user.setPassword(hashPassword);
        user.setRoleType(RoleType.USER);

        try {
            userRepository.save(user);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
