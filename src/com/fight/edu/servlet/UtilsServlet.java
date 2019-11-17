package com.fight.edu.servlet;

import static org.hamcrest.CoreMatchers.nullValue;

import java.io.IOException;
import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.fight.edu.db.Constants;
import com.fight.edu.db.DBUtil;
import com.fight.edu.db.DataSourceUtil;
import com.fight.edu.entity.BookTickets;
import com.fight.edu.entity.Planes;
import com.fight.edu.entity.Seties;
import com.fight.edu.util.MyBatiesUtil;
import com.fight.edu.util.Utils;

/**
 * Servlet implementation class ShowServlet
 */
@WebServlet("/UtilsServlet")
public class UtilsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UtilsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");

		HttpSession session = request.getSession();
		String username = null;
		String tab = null;
		String value = request.getParameter("value");
        Utils utils = new Utils();
		// 插入前台数据
		if (value.equals("0")) {
			username = request.getParameter("username");
			session.setAttribute("username", username);
		}
		if (value.equals("1")) {
			// 插入前台数据
			int id = 0;
			int before = 0;
			int window = 0;
			int asile = 0;
			int gate = 0;
			username = request.getParameter("user3");
			String name = request.getParameter("name");
			String sex1 = request.getParameter("sex");
			int sex = Integer.valueOf(sex1);
			String planeId1 = request.getParameter("plane_id");
			int planeId = Integer.valueOf(planeId1);
			String fight_id1 = request.getParameter("fight_id");
			int fight_id = Integer.valueOf(fight_id1);
			String pastype1 = request.getParameter("type");
			int pastype = Integer.valueOf(pastype1);
			// String rsetype=request.getParameter("rsetype");

			String[] setype = request.getParameterValues("setype");
			if (setype != null) {
				for (int i = 0; i < setype.length; i++) {// 0前排1靠窗2过道3靠登机口
					if (setype[i].equals("0")) {
						before = 1;
					}
					if (setype[i].equals("1")) {
						window = 1;
					}
					if (setype[i].equals("2")) {
						asile = 1;
					}
					if (setype[i].equals("3")) {
						gate = 1;
					}
				}
			}
			
			utils.Insert(null, username, name, sex, fight_id, planeId, pastype, before, asile, window, gate, null);
			tab = request.getParameter("tabname");
			List<Seties> seties = new ArrayList<Seties>();
			// 满足需求
			if (utils.check(tab, before, asile, window, gate)!= null && utils.check(tab, before, asile, window, gate).size()!=0) {
				seties = utils.check(tab, before, asile, window, gate);
				id = seties.get(0).getId();
				utils.isContent(name, username);
			} else {
				// 不满足需求
				seties = utils.findOther(tab, before, asile, window, gate);
				id = seties.get(0).getId();
			}
			utils.updateId(name, username, id);
			utils.changeChoose(tab, id);
			
			List<BookTickets> lists=new ArrayList<BookTickets>();
		    lists=utils.findUnion(username, tab);
		    request.setAttribute("usertickets", lists);
		    SqlSession sqlSession = MyBatiesUtil.getSqlSession();
			sqlSession.close();
		}
		   
		RequestDispatcher requestdispatcher = request.getRequestDispatcher("index.jsp");
		requestdispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
