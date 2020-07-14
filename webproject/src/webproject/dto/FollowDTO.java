package webproject.dto;

public class FollowDTO {

	private int Follow_Seq;
	private String Account_Num, Follow_Id;
	
	public FollowDTO() {
	}

	public int getFollow_Seq() {
		return Follow_Seq;
	}

	public void setFollow_Seq(int follow_Seq) {
		Follow_Seq = follow_Seq;
	}

	public String getAccount_Num() {
		return Account_Num;
	}

	public void setAccount_Num(String account_Num) {
		Account_Num = account_Num;
	}

	public String getFollow_Id() {
		return Follow_Id;
	}

	public void setFollow_Id(String follow_Id) {
		Follow_Id = follow_Id;
	}
	
} // end class
