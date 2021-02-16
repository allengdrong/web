/**
 * 유용한 기능 함수 선언
 * 여기 코드를 수정을 해서 실행하게되면 F5로 새로고침이 해결이 안되는 경우가 많다. 그런 경우 ctrl + F5 눌러서 해결하세요.
 */

/* tag 를 만들어서 문자열로 넘겨 주는 함수*/
function pairTag(preChar, tagName){
	return  "<" + preChar + tagName + ">";
}

/* 태그 이름을 받아서 앞뒤에 태그로 둘러 싸서 완성하는 함수 */
function tag(tagName, data){
	return pairTag("", tagName) + data + pairTag("/", tagName);
} 

/* id 객체를 선택하는 함수 - 객체 한개만 찾아 진다.*/
function sel(id){
	return document.getElementById(id);
}

/* tag 객체를 선택하는 함수 - 객체 여러개 [] - for of */
function selTag(tag){
	return document.getElementsByTagName(tag);
}

/** 요일에 사용될 배열 : 전역변수 */
var days = ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"];
/* 날짜를 형식에 맞는 문자열로 만들어 주는 함수 */
function dateToStr(inDate, separator, week){
	var year = inDate.getFullYear();
	var month = inDate.getMonth() + 1;
	var monthStr = "";
	// 월을 2자리로 만들어 주기 위한 처리
	if(month < 10) monthStr += "0";
	monthStr += month;
	var date = inDate.getDate();
	var dateStr = "";
	if(date < 10) dateStr += "0";
	dateStr += date;
	
	if(!separator) separator = "-";
	// yyyy-mm-dd 형식으로 
	var str = year + separator + monthStr + separator + dateStr;
	if(week) str += "(" + days[inDate.getDay()] + ")";
	 
	return str;
}

