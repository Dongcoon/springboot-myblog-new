package com.coon.myblog.service;

import com.coon.myblog.config.auth.PrincipalDetail;
import com.coon.myblog.model.Board;
import com.coon.myblog.model.User;
import com.coon.myblog.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Optional;

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

    @Transactional
    public void 글목록(Model model, Pageable pageable){

        Page<Board> blist = boardRepository.findAll(pageable);

        int pageNumber = blist.getPageable().getPageNumber(); // 현재페이지
        int totalPages = blist.getTotalPages();
        int pageBlock = 5;
        int startBlockPage = ( ( (pageNumber/pageBlock) * pageBlock) + 1);
        int endBlockPage = startBlockPage + pageBlock - 1;
        endBlockPage = totalPages<endBlockPage? totalPages:endBlockPage;

        model.addAttribute("startBlockPage", startBlockPage);
        model.addAttribute("endBlockPage", endBlockPage);
        model.addAttribute("boards", blist);
    }

    @Transactional
    public void 글상세보기(int id, Model model){

        model.addAttribute("board",boardRepository.findById(id)
                .orElseThrow(() -> {
                    return new IllegalArgumentException("글 상세보기 페이지를 찿을 수 없습니다.");
                }));
    }

    @Transactional
    public void 글수정하기(int id, Board requestBoard){

        Board board = boardRepository.findById(id)
                .orElseThrow(() -> {
                    return new IllegalArgumentException("글 찾기 실패: 아이디를 찾을 수 없습니다.");
                });

        System.out.println("제목: "+requestBoard.getTitle());
        System.out.println("내용: "+requestBoard.getContent());
        board.setTitle(requestBoard.getTitle());
        board.setContent(requestBoard.getContent());
        // 더티 체킹
    }
}
