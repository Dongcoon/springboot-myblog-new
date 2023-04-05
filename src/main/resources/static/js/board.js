let index = {
    init: function() {

        //juery문법으로 button의 id값일 경우 #id, class값일 경우 .class 를 입력해준다.
        //"click"이 일어날 경우 , 뒤의 값이 리턴되는데 람다 식을 이용하여 함수가 실행되도록 한다.
        $("#btn-write").on("click", () => {
            this.write();
        })
    },
    write: function (){
        //우리가 joinForm에서 보낼 값들을 호출한다.
        //마찬가지로 joinForm의 input태그안의 id값을 제대로 입력해주어야 한다.
        let data ={
            title: $("#title").val(),
            content: $("#content").val(),
        };

        $.ajax({
            type: "POST",
            url: "/api/board",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType : "json"
        }).done(function (resp){
            alert("정상적으로 글쓰기가 완료되었습니다.");
            location.href = "/";
        }).fail(function(error) {
            alert("글쓰기를 실패하였습니다.");
            alert(JSON.stringify(error));
            location.href = "/";
        });
    }
}
index.init();