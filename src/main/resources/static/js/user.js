let index = {
    init: function() {

        //juery문법으로 button의 id값일 경우 #id, class값일 경우 .class 를 입력해준다.
        //"click"이 일어날 경우 , 뒤의 값이 리턴되는데 람다 식을 이용하여 함수가 실행되도록 한다.
        $("#btn-save").on("click", () => {
            this.save();
        })
    },
    save: function (){
        //우리가 joinForm에서 보낼 값들을 호출한다.
        //마찬가지로 joinForm의 input태그안의 id값을 제대로 입력해주어야 한다.
        let data ={
            username: $("#username").val(),
            password: $("#password").val(),
            email: $("#email").val()
        };

        //ajax 통신을 이용하여 JSON의 타입으로 데이터를 전송한다.
        //POST타입의 Request로 "/auth/joinProc" 매핑주소를 가진 controller로 데이터를 전송한다.
        $.ajax({
            type: "POST",
            url: "/auth/joinProc",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType : "json"
        }).done(function (resp){
            alert("회원가입이 완료되었습니다.");
            location.href = "/auth/loginForm";
        }).fail(function(error) {
            alert("회원가입이 실패하였습니다.");
            alert(JSON.stringify(error));
            location.href = "/auth/joinForm";
        });
    }
}
index.init();