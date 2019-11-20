package mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import mvc.model.BoardDAO;
import mvc.model.BoardDTO;

public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final int LISTCOUNT = 5;

public void doGet(HttpServletRequest request, HttpServletResponseresponse) throws ServletException, IOException{
doPost(request, response);
}

public void doPost(HttpServletRequest request, HttpServletResponseresponse) throws ServletException, IOException{
String RequestURI = request.getRequestURI();
String contextPath = request.getContextPath();
String command = RequestURI.substring(contextPath.length());

response.setContentType("text/html; charset=utf-8");
request.setCharacterEncoding("utf-8");

if(command.equals("/BoardListAction.do")) {
requestBoardList(request);
RequestDisptcher rd = request.getRequestDispatcher("./board/list.jsp");
rd.forward(request, response);
}
}

public void requestBordList(HttpServletRequest request){
~~~~~~~~~~~~~~~~~~~~~~»ý·«
}
}