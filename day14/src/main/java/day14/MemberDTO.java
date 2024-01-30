package day14;
	
//	USERID   NOT NULL VARCHAR2(500) 
//	USERPW   NOT NULL VARCHAR2(500) 
//	USERNAME NOT NULL VARCHAR2(500) 
//	GENDER            VARCHAR2(100) 
//	EMAIL    NOT NULL VARCHAR2(500) 

public class MemberDTO {

	private String userid;
	private String userpw;
	private String username;
	private String gender;
	private String email;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
