package ex04;

public class Test2 {

	// 외부에서 호출할 수 없는 생성자
	private Test2() {
		System.out.println("Test2 생성자 호출");
	}
	
	// 자신과 같은 타입의 객체를 저장할 멤버 필드
	private static Test2 instance;
	
	public static Test2 getInstance() {
		if(instance == null) {
			// 내부에서는 생성자 호출 가능
			instance = new Test2();
		}
		return instance;
	}
}
