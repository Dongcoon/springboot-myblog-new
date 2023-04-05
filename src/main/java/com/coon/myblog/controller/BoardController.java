package com.coon.myblog.controller;

import com.coon.myblog.model.Board;
import com.coon.myblog.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

    @GetMapping({"", "/"})
    public String index(Model model){
        model.addAttribute("boards", boardService.글목록());
        return "index";
    }

    @GetMapping("/board/writeForm")
    public String writeForm(){
        return "board/writeForm";
    }

}
