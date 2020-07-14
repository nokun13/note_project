package webproject.dto;

import java.sql.Date;

public class PostDTO {
private int Post_Num, Post_Like, Post_Flag;
private String Account_Name, Post_Content, Post_Img;
private Date Post_Sysdate;
	
	public PostDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getPost_Num() {
		return Post_Num;
	}

	public void setPost_Num(int post_Num) {
		Post_Num = post_Num;
	}

	public int getPost_Like() {
		return Post_Like;
	}

	public void setPost_Like(int post_Like) {
		Post_Like = post_Like;
	}

	public int getPost_Flag() {
		return Post_Flag;
	}

	public void setPost_Flag(int post_Flag) {
		Post_Flag = post_Flag;
	}

	public String getAccount_Name() {
		return Account_Name;
	}

	public void setAccount_Name(String account_Name) {
		Account_Name = account_Name;
	}

	public String getPost_Content() {
		return Post_Content;
	}

	public void setPost_Content(String post_Content) {
		Post_Content = post_Content;
	}

	public String getPost_Img() {
		return Post_Img;
	}

	public void setPost_Img(String post_Img) {
		Post_Img = post_Img;
	}

	public Date getPost_Sysdate() {
		return Post_Sysdate;
	}

	public void setPost_Sysdate(Date post_Sysdate) {
		Post_Sysdate = post_Sysdate;
	}
	
}
