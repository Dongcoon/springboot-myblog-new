package com.coon.myblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
    @GetMapping("/auth/joinForm")
    public String joinForm(){
        return "/user/joinForm";
    }
}
