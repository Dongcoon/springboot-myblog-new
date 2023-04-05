<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp"%>

<div class="form-save">
    <form>
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" placeholder="Enter title" id="title">
        </div>

        <div class="form-group">
            <label for="content">Content</label>
            <textarea class="summernote" rows="5" id="content"></textarea>
        </div>
    </form>
    <button id="btn-write" class="btn btn-primary">글작성완료</button>

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