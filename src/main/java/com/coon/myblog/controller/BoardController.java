package com.coon.myblog.controller;

import com.coon.myblog.model.Board;
import com.coon.myblog.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

    @GetMapping({"", "/"})
    public String index(Model model,
                        @PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC)Pageable pageable){

        boardService.글목록(model, pageable);

        return "index";
    }

    @GetMapping("/board/{id}")
    public String findById(@PathVariable int id, Model model){
        boardService.글상세보기(id, model);
        return "board/detail";
    }

    @GetMapping("/board/{id}/updateForm")
    public String updateForm(@PathVariable int id, Model model){
        boardService.글상세보기(id, model);
        return "board/updateForm";
    }

    @GetMapping("/board/writeForm")
    public String writeForm(){
        return "board/writeForm";
    }

}
