package com.webjjang.main.controller;

// 인터페이스 - 추상 메서드를 가지고 있다. final 변수 가능
public interface Service {

	// 추상메서드 - override(재정의)해서 사용하여야 합니다.
	// 메서드 뒤에 {}가 없다. - 구현하지 않았다.(추상)
	public Object service(Object obj) throws Exception;
	
}
