package ex06;

public class MemberDTO {

	private String name;
	private String imgPath;
	
	public MemberDTO() {}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
		this.imgPath = "image/" + name + ".png";
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
}
