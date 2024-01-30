package book;

import java.util.ArrayList;
import java.util.List;

public class BookDAO {

	// 프로그램에서 사용되는 데이터의 저장소
	private ArrayList<BookDTO> list = new ArrayList<>();
	
	// 프로그램의 주요 기능을 메서드로 작성한다
	// 목록
	public List<BookDTO> selectList() {
		// select * from book order by idx;
		return list;
	}
	
	// 단일조회
	public BookDTO selectOne(int idx) {
		// select * from book where idx = ?
		for(BookDTO dto : list) {
			if(dto.getIdx() == idx) {
				return dto;
			}
		}
		return null;
	}
	
	// 추가
	public int insert(BookDTO dto) {
		// insert into book (title, author, publisher, publishDate) values (?, ?, ?, ?);
		int row = list.add(dto) ? 1 : 0; 
		return row;
	}
	
	// 삭제
	public int delete(int idx) {
		// delete book where idx = ?
		int row = list.removeIf(dto -> dto.getIdx() == idx) ? 1 : 0;
		return row;
	}
	
	// 추가한 이후 마지막으로 추가된 객체의 idx가 몇번인지 확인하는 기능
	public int currval() {
		// select book_seq.currval from dual;
		return BookDTO.getSeq();
	}
	
	
}










