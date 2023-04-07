package com.coon.myblog.controller.api;

import com.coon.myblog.config.auth.PrincipalDetail;
import com.coon.myblog.dto.ResponseDto;
import com.coon.myblog.model.Board;
import com.coon.myblog.repository.BoardRepository;
import com.coon.myblog.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
public class BoardApiController {
    @Autowired
    private BoardService boardService;

    @PostMapping("/api/board")
    public ResponseDto<Integer> write(@RequestBody Board board, @AuthenticationPrincipal PrincipalDetail principal){
        boardService.글쓰기(board, principal.getUser());

        return new ResponseDto<Integer>(HttpStatus.OK.value(),1);

    }
    @PutMapping("/api/board/{id}")
    public ResponseDto<Integer> update(@PathVariable int id, @RequestBody Board board){
        boardService.글수정하기(id, board);

        return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
    }
}
