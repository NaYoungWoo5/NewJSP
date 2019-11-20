package mvc.model.board;

public class BoardDTO {
	private int num;
	private String id;
	private String name;
	private String subject;
	private String content;
	private String regist_day;
	private int hit;
privaet String ip;

	public BoardDTO() {
		super();
	}

	public int getNum() {
		return num;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}
}
