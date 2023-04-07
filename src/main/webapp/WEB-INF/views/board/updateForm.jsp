<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp"%>

<div class="form-save">
    <form>
        <div class="form-group">
            <input type="hidden" id="id" value="${board.id}">
            <label for="title">Title</label>
            <input type="text" class="form-control" placeholder="Enter title" id="title" value="${board.title}">
        </div>

        <div class="form-group">
            <label for="content">Content</label>
            <textarea class="summernote" rows="5" id="content">${board.content}</textarea>
        </div>
    </form>
    <button id="btn-update" class="btn btn-primary">글 수정완료</button>

</div>

<script>
    $('.summernote').summernote({
        placeholder: '글을 작성해주세요',
        tabsize: 2,
        height: 300,
        toolbar: [
            ['style', ['style']],
            ['font', ['bold', 'underline', 'clear']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['table', ['table']],
            ['insert', ['link', 'picture', 'video']],
            ['view', ['fullscreen', 'codeview', 'help']]
        ]
    });
</script>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>