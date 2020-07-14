package dto;

public class CommentDTO {
	private int Comment_Seq, Post_Num, Comment_Ref, Comment_Step, Comment_Level;
	private String Account_Name;

	public CommentDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getComment_Seq() {
		return Comment_Seq;
	}

	public void setComment_Seq(int comment_Seq) {
		Comment_Seq = comment_Seq;
	}

	public int getPost_Num() {
		return Post_Num;
	}

	public void setPost_Num(int post_Num) {
		Post_Num = post_Num;
	}

	public int getComment_Ref() {
		return Comment_Ref;
	}

	public void setComment_Ref(int comment_Ref) {
		Comment_Ref = comment_Ref;
	}

	public int getComment_Step() {
		return Comment_Step;
	}

	public void setComment_Step(int comment_Step) {
		Comment_Step = comment_Step;
	}

	public int getComment_Level() {
		return Comment_Level;
	}

	public void setComment_Level(int comment_Level) {
		Comment_Level = comment_Level;
	}

	public String getAccount_Name() {
		return Account_Name;
	}

	public void setAccount_Name(String account_Name) {
		Account_Name = account_Name;
	}

}
