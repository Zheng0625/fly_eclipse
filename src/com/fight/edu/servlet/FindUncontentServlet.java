package com.fight.edu.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.fight.edu.entity.BookTickets;
import com.fight.edu.util.MyBatiesUtil;
import com.fight.edu.util.Utils;

/**
 * Servlet implementation class FindUncontentServlet
 */
@WebServlet("/FindUncontentServlet")
public class FindUncontentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindUncontentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		Utils utils=new Utils();
		List<BookTickets> list=new ArrayList<BookTickets>();
		list=utils.findunConNotes();
		request.setAttribute("unNotes", list);
		SqlSession sqlSession = MyBatiesUtil.getSqlSession();
		sqlSession.close();
		RequestDispatcher requestdispatcher = request.getRequestDispatcher("admin.jsp");
		requestdispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
