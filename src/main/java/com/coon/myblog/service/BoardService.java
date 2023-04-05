package com.coon.myblog.service;

import com.coon.myblog.config.auth.PrincipalDetail;
import com.coon.myblog.model.Board;
import com.coon.myblog.model.User;
import com.coon.myblog.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;
    @Transactional
    public void 글쓰기(Board board, User user){
        board.setCount(0);
        board.setUser(user);
        boardRepository.save(board);
    }
}
