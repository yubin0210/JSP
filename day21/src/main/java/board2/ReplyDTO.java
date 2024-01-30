package board2;

import java.sql.Date;

//	IDX         NOT NULL NUMBER         
//	BOARD_IDX            NUMBER         
//	WRITER               VARCHAR2(100)  
//	CONTENT     NOT NULL VARCHAR2(2000) 
//	WRITEDATE            DATE           
//	DELETED              NUMBER         
//	PARENT_IDX           NUMBER         
//	REPLY_DEPTH          NUMBER  

public class ReplyDTO {
	private int idx;
	private int board_idx;
	private String writer;
	private String content;
	private Date writeDate;
	private int deleted;
	private int parent_idx;
	private int reply_depth;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
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
	public int getDeleted() {
		return deleted;
	}
	public void setDeleted(int deleted) {
		this.deleted = deleted;
	}
	public int getParent_idx() {
		return parent_idx;
	}
	public void setParent_idx(int parent_idx) {
		this.parent_idx = parent_idx;
	}
	public int getReply_depth() {
		return reply_depth;
	}
	public void setReply_depth(int reply_depth) {
		this.reply_depth = reply_depth;
	}
	
	
}
