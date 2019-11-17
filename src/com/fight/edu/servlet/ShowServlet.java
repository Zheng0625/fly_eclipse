package com.fight.edu.servlet;

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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fight.edu.db.Constants;
import com.fight.edu.db.DBUtil;
import com.fight.edu.db.DataSourceUtil;
import com.fight.edu.entity.Planes;
import com.fight.edu.entity.Seties;
import com.fight.edu.util.Utils;

/**
 * Servlet implementation class ShowServlet
 */
@WebServlet("/ShowServlet")
public class ShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowServlet() {
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
		response.setContentType("text/html;charset=utf-8");
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Seties> seties = new ArrayList<Seties>();
		ArrayList<ArrayList<Seties>> setiess = new ArrayList<ArrayList<Seties>>();
		String tab = request.getParameter("tab");
		
		String sub = request.getParameter("sub");
		
		String planeid = request.getParameter("plane_id");
		String fight_id = request.getParameter("fight_id");
		try {
			conn = DataSourceUtil.getConnection(Constants.url, Constants.username, Constants.password);
			String sql = "select * from " + tab;
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			int pre_row = 0;
			while (rs.next()) {
				int id = rs.getInt("id");
				int class_type = rs.getInt("class_type");
				int plane_id = rs.getInt("plane_id");
				int isgate = rs.getInt("isgate");
				int isbefore = rs.getInt("isbefore");
				int isasile = rs.getInt("isasile");
				int iswindow = rs.getInt("iswindow");
				int row = rs.getInt("row");
				int column = rs.getInt("column");
				int ischoose = rs.getInt("ischoose");
				if (row != pre_row) {
					setiess.add(seties);
					seties = new ArrayList<Seties>();
					pre_row = row;
				}

				Seties s = new Seties(id, class_type, plane_id, isbefore, isgate, isasile, iswindow, row, column,
						ischoose);
				seties.add(s);

			}
			setiess.add(seties);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (null != rs) {
					rs.close();
				}
				if (null != ps) {
					ps.close();
				}
				if (null != conn) {
					DataSourceUtil.closeConnection(conn);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		String user2 = request.getParameter("username2");
		request.setAttribute("set", setiess);
		request.setAttribute("username2", user2);
		request.setAttribute("tabname", tab);
		request.setAttribute("plane_id", planeid);
		request.setAttribute("fight_id", fight_id);
		if (sub.equals("sub1")) {
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("set.jsp");
			requestdispatcher.forward(request, response);
		}
		if (sub.equals("sub2")) {
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("set2.jsp");
			requestdispatcher.forward(request, response);
		}
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
