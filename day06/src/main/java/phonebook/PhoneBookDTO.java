package phonebook;

//	이름       널?       유형            
//	-------- -------- ------------- 
//	IDX      NOT NULL NUMBER        
//	NAME     NOT NULL VARCHAR2(100) 
//	PNUM     NOT NULL VARCHAR2(20)  
//	AGE               NUMBER        
//	FAVORITE          CHAR(1)   

public class PhoneBookDTO {

	private int idx;
	private String name;
	private String pnum;
	private int age;
	private String favorite;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getFavorite() {
		return favorite;
	}
	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}
	
	
}
