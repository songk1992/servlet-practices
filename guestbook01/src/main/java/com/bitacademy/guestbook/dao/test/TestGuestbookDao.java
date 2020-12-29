

package com.bitacademy.guestbook.dao.test;

import java.util.List;

import com.bitacademy.guestbook.dao.GuestbookDao;
import com.bitacademy.guestbook.vo.GuestbookVo;

public class TestGuestbookDao {

	public static void main(String[] args) {
//		EmaillistVo vo = new EmaillistVo();
//		vo.setFirstName("마");
//		vo.setLastName("이콜");
//		vo.setEmail("michol@gmail.com");
//		testInert(vo);

		testFindAll();
	}
	
	public static boolean testInert(GuestbookVo vo) {
		return new GuestbookDao().insert(vo);
	}
	
	public static void testFindAll() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}
}

