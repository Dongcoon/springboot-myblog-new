package com.coon.myblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

    @GetMapping({"", "/"})
    public String index(){
        return "index";
    }

    @GetMapping("/board/writeForm")
    public String writeForm(){
        return "board/writeForm";
    }
}
