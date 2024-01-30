package board;

import java.sql.Date;

//	IDX       NOT NULL NUMBER         
//	TITLE     NOT NULL VARCHAR2(500)  
//	WRITER    NOT NULL VARCHAR2(100)  
//	CONTENT   NOT NULL VARCHAR2(4000) 
//	WRITEDATE          DATE           

public class BoardDTO {

	private int idx;
	private String title;
	private String writer;
	private String content;
	private Date writeDate;
	
	private int replyCount;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public int getReplyCount() {
		return replyCount;
	}
	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
	
	
}
