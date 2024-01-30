package ex03;

import java.sql.Date;
/*
	SQL (DDL)
	
	create table review (
		idx			number			generated as identity primary key,
		image		varchar2(500)	not null,
		storeName	varchar2(100)	not null,
		content		varchar2(2000)	not null,
		visitDate	date			not null
	);
	
 */

public class ReviewDTO {

	private int idx;
	private String image;
	private String storeName;
	private String content;
	private Date visitDate;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(Date visitDate) {
		this.visitDate = visitDate;
	}
	
	
}
