package user.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

public class UserVO {
	//userTBL
	private int no;
	private String username;
	private int birthyear;
	private String addr;
	private String mobile;
}
