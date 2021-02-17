package com.webjjang.main.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import com.webjjang.board.service.BoardDeleteService;
import com.webjjang.board.service.BoardListService;
import com.webjjang.board.service.BoardUpdateService;
import com.webjjang.board.service.BoardViewService;
import com.webjjang.board.service.BoardWriteService;

public class MainController {
	
	// 데이터 입력 객체 - Scanner
	private static Scanner scanner = new Scanner(System.in);

	// map : key - value 저장하는 저장객체. key를 가지고 주소를 정하게 된다.
	// 빠른 데이터 검색이 가능. 메모리가 많이 소요된다.
	private static Map<String, Service> serviceMap = new HashMap<>();

	static {
		System.out.println("MainController.static{}");
		try {
			init();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("객체 생성에 문제가 발생했습니다.");
		}
	}

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("MainController.main() 시작");
		System.out.println("<< 게시판 서비스 실행 >>");
		while (true) {
			System.out.println("실행할 URL을 입력해 주세요.(/board/list.jsp)");
			System.out.print("입력 ->");
			String menu = scanner.nextLine();
			// 만약에 shutdown이 입력이 되면 시스템을 종료한다.
			if (menu.equals("shutdown")) {
				System.out.println("시스템을 종료합니다.");
				System.exit(0);
			}
			Service service = serviceMap.get(menu);
			if (service != null)
				service.service(null);
			else
				System.out.println("잘못된 메뉴를 선택했습니다.(ERROR:404)");
		}
	}

	// main() 실행하기 전에 딱 한번만 실행이 되는 메서드
	// 객체를 생성해서 저장해 둔다. - 초기화 시킨다.
	public static void init() throws Exception {
		System.out.println("MainController.init() 시작");
		// map에 데이터 저장하기 -> put(key, value) - key : 설계
		// map에 데이터 꺼내오기 -> get(key) - key : 사용자 입력
		// 설계한 대로 객체를 생성해서 저장해 둔다.
		serviceMap.put("/board/list.jsp", new BoardListService());
		serviceMap.put("/board/view.jsp", new BoardViewService());
		serviceMap.put("/board/write.jsp", new BoardWriteService());
		serviceMap.put("/board/update.jsp", new BoardUpdateService());
		serviceMap.put("/board/delete.jsp", new BoardDeleteService());
		// 게시판 리스트 객체 확인
		serviceMap.get("/board/list.jsp").service(null);
		System.out.println("객체 생성이 정상적으로 완료 되었습니다.");
	}

}
