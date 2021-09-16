package day1;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class MyUser {
	private String name;
	// 필드(또는 프로퍼티, 속성)
	private int age;
	private String location;

}
