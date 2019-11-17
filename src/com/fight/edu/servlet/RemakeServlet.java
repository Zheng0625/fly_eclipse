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
import com.fight.edu.entity.Seties;
import com.fight.edu.util.MyBatiesUtil;
import com.fight.edu.util.Utils;

/**
 * Servlet implementation class RemakeServlet
 */
@WebServlet("/RemakeServlet")
public class RemakeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RemakeServlet() {
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
		String tab = null;
		int tab3 = 0;
		// 获取前台remake.jsp传入后台的值
		int tab1 = Integer.valueOf(request.getParameter("tab1"));
		if (tab1 == 1) {
			tab = "tab_a320";
		}
		if (tab1 == 2) {
			tab = "tab_a32e";
		}
		if (tab1 == 3) {
			tab = "tab_a32g";
		}
		if (tab1 == 4) {
			tab = "tab_a32n";
		}
		String tab2 = request.getParameter("tab2");
		List<BookTickets> list = new ArrayList<BookTickets>();
		Utils utils = new Utils();
		list = utils.findByPlaneId(tab1);
		for (int i = 0; i < list.size(); i++) {
			int classid = list.get(i).getClass_id();
			utils.changeChoosed(tab, classid);
			int id = list.get(i).getId();
			String name = list.get(i).getName();
			String username = list.get(i).getUser();
			int iswindow = list.get(i).getIswindow();
			int isbefore = list.get(i).getIsbefore();
			int isasile = list.get(i).getIsasile();
			int isgate = list.get(i).getIsgate();
			List<Seties> seties = new ArrayList<Seties>();
			// 找不到有用户预定座位
			if (utils.findLast(username) == 0) {
					// 满足需求执行
				if (utils.check(tab, isbefore, isasile, iswindow, isgate) != null 
			&&utils.check(tab, isbefore, isasile, iswindow, isgate).size()!=0) {
					seties = utils.check(tab, isbefore, isasile, iswindow, isgate);
					id = seties.get(0).getId();
					utils.isContent(name, username);
				} else {
					// 如果不满足需求执行
					seties = utils.findOther(tab, isbefore, isasile, iswindow, isgate);
					id = seties.get(0).getId();
				}
			}
			// 有用户先前预定座位
			if (utils.findLast(username) != 0) {
				// 满足需求执行
				if(utils.check(tab, isbefore, isasile, iswindow, isgate)!=null
			&& utils.check(tab, isbefore, isasile, iswindow, isgate).size()!=0) {
				      //满足需求就近
					if (utils.findCloseByType(tab, isbefore, isasile, iswindow, isgate, id)!=null
							&&utils.findCloseByType(tab, isbefore, isasile, iswindow, isgate, id).size()>0) {
						seties = utils.findCloseByType(tab, isbefore, isasile, iswindow, isgate, id);
						id = seties.get(0).getId();
					} else {
						//满足需求不就近
						seties = utils.check(tab, isbefore, isasile, iswindow, isgate);
						id = seties.get(0).getId();
					}
					utils.isContent(name, username);
				
				} else {
					// 如果不满足需求执行
				id = utils.findLast(username);
				    //不满足需求就近
				if (utils.check(tab, isbefore, isasile, iswindow, isgate).size() ==0 ){
					if (utils.findunContentOther(tab, isbefore, isasile, iswindow, isgate, id).size() != 0) {
						seties = utils.findunContentOther(tab, isbefore, isasile, iswindow, isgate, id);
						id = seties.get(0).getId();
					} else {
						//不满足需求不就近
						seties = utils.findOther(tab, isbefore, isasile, iswindow, isgate);
						id = seties.get(0).getId();
					}
				}
			}
		}
			utils.updateId(name, username, id);
			utils.changeChooses(tab2, id);
			
			if (tab2.equals("tab_a320")) {
				tab3 = 1;
			}
			if (tab2.equals("tab_a32e")) {
				tab3 = 2;
			}
			if (tab2.equals("tab_a32g")) {
				tab3 = 3;
			}
			if (tab2.equals("tab_a32n")) {
				tab3 = 4;
			}
			utils.changePlaneId(tab1, tab3);
			//utils.changezero(tab1);
		}
		SqlSession sqlSession = MyBatiesUtil.getSqlSession();
		sqlSession.close();
		RequestDispatcher requestdispatcher = request.getRequestDispatcher("admin.jsp");
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
