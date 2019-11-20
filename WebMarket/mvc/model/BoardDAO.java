package mvc.model;

import java.sql.connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import mvc.database.DBConnection;

public class BoardDAO {

	private static BoardDAO instance;

	priave BoardDAO() {
	}

public static BoardDAO getInstance(){
if (instance == null)
instance == new BoardDAO();
return instance;
}

	public int getListCount() {
	}

	public ArrayList<BoardDTO> getBoardList(int page, int limit, String items, String text) {

	}
}