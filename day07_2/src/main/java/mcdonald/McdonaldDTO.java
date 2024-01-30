package mcdonald;

// 자바 빈즈 형식

//	IDX      NOT NULL NUMBER         
//	CATEGORY          VARCHAR2(50)   
//	NAME     NOT NULL VARCHAR2(100)  
//	PRICE    NOT NULL NUMBER         
//	MEMO     NOT NULL VARCHAR2(2000) 
//	IMGNAME  NOT NULL VARCHAR2(200)  

public class McdonaldDTO {
	
	private int idx;
	private String category;
	private String name;
	private int price;
	private String memo;
	private String imgName;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	
	

}
