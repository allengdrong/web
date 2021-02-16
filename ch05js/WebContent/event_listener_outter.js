/**
 * 이벤트 리스너를 위한 자바스크립트
 */


	sel_body = document.getElementById("body");
	// load 리스너 붙이기 addEventListener("이벤트", 자동으로 처리할 처리문 하나) -> 바로 실행
// 	sel_body.addEventListener("load", alert('문서를 로딩했어요.'));
	// function(){여러 처리문;}
	sel_body.addEventListener("load", load_func());
	// 로딩이 다 되면 처리할 함수 정의
	function load_func(){
		alert('문서를 로딩했어요.');
		alert('test');
	}
	
	// 클릭 이벤트 리스터 작성
	// load 리스너 붙이기 addEventListener("이벤트", 이벤트가 발생되면 호출할 함수) -> 이벤트가 발생이 되야 처리
	document.getElementById("div_click").addEventListener("click", function(){alert("클릭했어요.")});
	document.getElementById("div_mouseover").addEventListener("mouseover", function(){alert("마우스가 올라갔어요.")});
	document.getElementById("input_keyup").addEventListener("keyup", function(){alert("키보드 키가 올라갔어요.")});
	document.getElementById("input_focus").addEventListener("focus", function(){alert("커서가 들어 갔어요.")});
	document.getElementById("select_change").addEventListener("change", function(){alert("데이터 선택으로 데이터가 변경됐어요.")});
	
