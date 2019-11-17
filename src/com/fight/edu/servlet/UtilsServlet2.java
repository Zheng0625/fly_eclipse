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
@WebServlet("/UtilsServlet2")
public class UtilsServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UtilsServlet2() {
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

		Utils utils = new Utils();
		List<Seties> seties = new ArrayList<Seties>();
		HttpSession session = request.getSession();
		String name = null;
		String username = null;
		String tab = null;
		String value = request.getParameter("value");
		int id = 0;
		int sex = 0;
		int type = 0;
		String[] setype;
	

		if (value.equals("0")) {
			username = request.getParameter("username");
			session.setAttribute("username", username);
		}
		if (value.equals("1")) {
			// 插入前台数据
			username = request.getParameter("user3");
			String planeId1 = request.getParameter("plane_id");
			int planeId = Integer.valueOf(planeId1);
			String fight_id1 = request.getParameter("fight_id");
			int fight_id = Integer.valueOf(fight_id1);
			
			// 插入第一条团队成员信息
			if (request.getParameter("person1") != null && !"".equals(request.getParameter("person1"))) {
				int before = 0;
				int window = 0;
				int asile = 0;
				int gate = 0;
				
			    name = request.getParameter("person1");
				sex = Integer.valueOf(request.getParameter("sex1"));
				type = Integer.valueOf(request.getParameter("type1"));
				setype = request.getParameterValues("setype1");
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
				utils.Insert(null, username, name, sex, fight_id, planeId, type, before, asile, window, gate, null);
				tab = request.getParameter("tabname");

				// 找不到有用户预定座位
				if (utils.findLast(username) == 0) {
						// 满足需求执行
					if (utils.check(tab, before, asile, window, gate) != null 
				&&utils.check(tab, before, asile, window, gate).size()!=0) {
						seties = utils.check(tab, before, asile, window, gate);
						id = seties.get(0).getId();
						utils.isContent(name, username);
					} else {
						// 如果不满足需求执行
						seties = utils.findOther(tab, before, asile, window, gate);
						id = seties.get(0).getId();
					}
				}
				// 有用户先前预定座位
				if (utils.findLast(username) != 0) {
					// 满足需求执行
					if(utils.check(tab, before, asile, window, gate)!=null
				&& utils.check(tab, before, asile, window, gate).size()!=0) {
					      //满足需求就近
						if (utils.findCloseByType(tab, before, asile, window, gate, id)!=null
								&&utils.findCloseByType(tab, before, asile, window, gate, id).size()>0) {
							seties = utils.findCloseByType(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//满足需求不就近
							seties = utils.check(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
						utils.isContent(name, username);
					
					} else {
						// 如果不满足需求执行
					id = utils.findLast(username);
					    //不满足需求就近
					if (utils.check(tab, before, asile, window, gate).size() ==0 ){
						if (utils.findunContentOther(tab, before, asile, window, gate, id).size() != 0) {
							seties = utils.findunContentOther(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//不满足需求不就近
							seties = utils.findOther(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
					}
				}
			}
				utils.updateId(name, username, id);
				utils.changeChooses(tab, id);
			}
			// 插入第二条团队成员信息
			if (request.getParameter("person2") != null && !"".equals(request.getParameter("person2"))) {
				int before = 0;
				int window = 0;
				int asile = 0;
				int gate = 0;
				
				name = request.getParameter("person2");
				sex = Integer.valueOf(request.getParameter("sex2"));
				type = Integer.valueOf(request.getParameter("type2"));
				setype = request.getParameterValues("setype2");
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
				utils.Insert(null, username, name, sex, fight_id, planeId, type, before, asile, window, gate, null);
				tab = request.getParameter("tabname");

				// 找不到有用户预定座位
				if (utils.findLast(username) == 0) {
						// 满足需求执行
					if (utils.check(tab, before, asile, window, gate) != null 
				&&utils.check(tab, before, asile, window, gate).size()!=0) {
						seties = utils.check(tab, before, asile, window, gate);
						id = seties.get(0).getId();
						utils.isContent(name, username);
					} else {
						// 如果不满足需求执行
						seties = utils.findOther(tab, before, asile, window, gate);
						id = seties.get(0).getId();
					}
				}
				// 有用户先前预定座位
				if (utils.findLast(username) != 0) {
					// 满足需求执行
					if(utils.check(tab, before, asile, window, gate)!=null
				&& utils.check(tab, before, asile, window, gate).size()!=0) {
					      //满足需求就近
						if (utils.findCloseByType(tab, before, asile, window, gate, id)!=null
								&&utils.findCloseByType(tab, before, asile, window, gate, id).size()>0) {
							seties = utils.findCloseByType(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//满足需求不就近
							seties = utils.check(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
						utils.isContent(name, username);
					
					} else {
						// 如果不满足需求执行
					id = utils.findLast(username);
					    //不满足需求就近
					if (utils.check(tab, before, asile, window, gate).size() ==0 ){
						if (utils.findunContentOther(tab, before, asile, window, gate, id).size() != 0) {
							seties = utils.findunContentOther(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//不满足需求不就近
							seties = utils.findOther(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
					}
				}
			}
				utils.updateId(name, username, id);
				utils.changeChooses(tab, id);
			}
			// 插入第三条团队成员信息
			if (request.getParameter("person3") != null && !"".equals(request.getParameter("person3"))) {
				int before = 0;
				int window = 0;
				int asile = 0;
				int gate = 0;
				name = request.getParameter("person3");
				sex = Integer.valueOf(request.getParameter("sex3"));
				type = Integer.valueOf(request.getParameter("type3"));
				setype = request.getParameterValues("setype3");
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
				utils.Insert(null, username, name, sex, fight_id, planeId, type, before, asile, window, gate, null);
				tab = request.getParameter("tabname");

				// 找不到有用户预定座位
				if (utils.findLast(username) == 0) {
						// 满足需求执行
					if (utils.check(tab, before, asile, window, gate) != null 
				&&utils.check(tab, before, asile, window, gate).size()!=0) {
						seties = utils.check(tab, before, asile, window, gate);
						id = seties.get(0).getId();
						utils.isContent(name, username);
					} else {
						// 如果不满足需求执行
						seties = utils.findOther(tab, before, asile, window, gate);
						id = seties.get(0).getId();
					}
				}
				// 有用户先前预定座位
				if (utils.findLast(username) != 0) {
					// 满足需求执行
					if(utils.check(tab, before, asile, window, gate)!=null
				&& utils.check(tab, before, asile, window, gate).size()!=0) {
					      //满足需求就近
						if (utils.findCloseByType(tab, before, asile, window, gate, id)!=null
								&&utils.findCloseByType(tab, before, asile, window, gate, id).size()>0) {
							seties = utils.findCloseByType(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//满足需求不就近
							seties = utils.check(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
						utils.isContent(name, username);
					
					} else {
						// 如果不满足需求执行
					id = utils.findLast(username);
					    //不满足需求就近
					if (utils.check(tab, before, asile, window, gate).size() ==0 ){
						if (utils.findunContentOther(tab, before, asile, window, gate, id).size() != 0) {
							seties = utils.findunContentOther(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//不满足需求不就近
							seties = utils.findOther(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
					}
				}
			}
				utils.updateId(name, username, id);
				utils.changeChooses(tab, id);
			}
			//插入第四条团队成员信息
			if (request.getParameter("person4") != null && !"".equals(request.getParameter("person4"))) {
				int before = 0;
				int window = 0;
				int asile = 0;
				int gate = 0;
				name = request.getParameter("person4");
				sex = Integer.valueOf(request.getParameter("sex4"));
				type = Integer.valueOf(request.getParameter("type4"));
				setype = request.getParameterValues("setype4");
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
				utils.Insert(null, username, name, sex, fight_id, planeId, type, before, asile, window, gate, null);
				tab = request.getParameter("tabname");
				// 找不到有用户预定座位
				if (utils.findLast(username) == 0) {
						// 满足需求执行
					if (utils.check(tab, before, asile, window, gate) != null 
				&&utils.check(tab, before, asile, window, gate).size()!=0) {
						seties = utils.check(tab, before, asile, window, gate);
						id = seties.get(0).getId();
						utils.isContent(name, username);
					} else {
						// 如果不满足需求执行
						seties = utils.findOther(tab, before, asile, window, gate);
						id = seties.get(0).getId();
					}
				}
				// 有用户先前预定座位
				if (utils.findLast(username) != 0) {
					// 满足需求执行
					if(utils.check(tab, before, asile, window, gate)!=null
				&& utils.check(tab, before, asile, window, gate).size()!=0) {
					      //满足需求就近
						if (utils.findCloseByType(tab, before, asile, window, gate, id)!=null
								&&utils.findCloseByType(tab, before, asile, window, gate, id).size()>0) {
							seties = utils.findCloseByType(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//满足需求不就近
							seties = utils.check(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
						utils.isContent(name, username);
					
					} else {
						// 如果不满足需求执行
					id = utils.findLast(username);
					    //不满足需求就近
					if (utils.check(tab, before, asile, window, gate).size() ==0 ){
						if (utils.findunContentOther(tab, before, asile, window, gate, id).size() != 0) {
							seties = utils.findunContentOther(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//不满足需求不就近
							seties = utils.findOther(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
					}
				}
			}
				utils.updateId(name, username, id);
				utils.changeChooses(tab, id);
			}
			// 插入第五条团队成员信息
			if (request.getParameter("person5") != null && !"".equals(request.getParameter("person5"))) {
				int before = 0;
				int window = 0;
				int asile = 0;
				int gate = 0;
				name = request.getParameter("person5");
				sex = Integer.valueOf(request.getParameter("sex5"));
				type = Integer.valueOf(request.getParameter("type5"));
				setype = request.getParameterValues("setype5");
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
				utils.Insert(null, username, name, sex, fight_id, planeId, type, before, asile, window, gate, null);
				tab = request.getParameter("tabname");

				// 找不到有用户预定座位
				if (utils.findLast(username) == 0) {
						// 满足需求执行
					if (utils.check(tab, before, asile, window, gate) != null 
				&&utils.check(tab, before, asile, window, gate).size()!=0) {
						seties = utils.check(tab, before, asile, window, gate);
						id = seties.get(0).getId();
						utils.isContent(name, username);
					} else {
						// 如果不满足需求执行
						seties = utils.findOther(tab, before, asile, window, gate);
						id = seties.get(0).getId();
					}
				}
				// 有用户先前预定座位
				if (utils.findLast(username) != 0) {
					// 满足需求执行
					if(utils.check(tab, before, asile, window, gate)!=null
				&& utils.check(tab, before, asile, window, gate).size()!=0) {
					      //满足需求就近
						if (utils.findCloseByType(tab, before, asile, window, gate, id)!=null
								&&utils.findCloseByType(tab, before, asile, window, gate, id).size()>0) {
							seties = utils.findCloseByType(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//满足需求不就近
							seties = utils.check(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
						utils.isContent(name, username);
					
					} else {
						// 如果不满足需求执行
					id = utils.findLast(username);
					    //不满足需求就近
					if (utils.check(tab, before, asile, window, gate).size() ==0 ){
						if (utils.findunContentOther(tab, before, asile, window, gate, id).size() != 0) {
							seties = utils.findunContentOther(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//不满足需求不就近
							seties = utils.findOther(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
					}
				}
			}
				utils.updateId(name, username, id);
				utils.changeChooses(tab, id);
			}
			// 插入第六条团队成员信息
			if (request.getParameter("person6") != null && !"".equals(request.getParameter("person6"))) {
				int before = 0;
				int window = 0;
				int asile = 0;
				int gate = 0;
				name = request.getParameter("person6");
				sex = Integer.valueOf(request.getParameter("sex6"));
				type = Integer.valueOf(request.getParameter("type6"));
				setype = request.getParameterValues("setype6");
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
				utils.Insert(null, username, name, sex, fight_id, planeId, type, before, asile, window, gate, null);
				tab = request.getParameter("tabname");

				// 找不到有用户预定座位
				if (utils.findLast(username) == 0) {
						// 满足需求执行
					if (utils.check(tab, before, asile, window, gate) != null 
				&&utils.check(tab, before, asile, window, gate).size()!=0) {
						seties = utils.check(tab, before, asile, window, gate);
						id = seties.get(0).getId();
						utils.isContent(name, username);
					} else {
						// 如果不满足需求执行
						seties = utils.findOther(tab, before, asile, window, gate);
						id = seties.get(0).getId();
					}
				}
				// 有用户先前预定座位
				if (utils.findLast(username) != 0) {
					// 满足需求执行
					if(utils.check(tab, before, asile, window, gate)!=null
				&& utils.check(tab, before, asile, window, gate).size()!=0) {
					      //满足需求就近
						if (utils.findCloseByType(tab, before, asile, window, gate, id)!=null
								&&utils.findCloseByType(tab, before, asile, window, gate, id).size()>0) {
							seties = utils.findCloseByType(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//满足需求不就近
							seties = utils.check(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
						utils.isContent(name, username);
					
					} else {
						// 如果不满足需求执行
					id = utils.findLast(username);
					    //不满足需求就近
					if (utils.check(tab, before, asile, window, gate).size() ==0 ){
						if (utils.findunContentOther(tab, before, asile, window, gate, id).size() != 0) {
							seties = utils.findunContentOther(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//不满足需求不就近
							seties = utils.findOther(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
					}
				}
			}
				utils.updateId(name, username, id);
				utils.changeChooses(tab, id);
			}
			// 插入第七条团队成员信息
			if (request.getParameter("person7") != null && !"".equals(request.getParameter("person7"))) {
				int before = 0;
				int window = 0;
				int asile = 0;
				int gate = 0;
				name = request.getParameter("person7");
				sex = Integer.valueOf(request.getParameter("sex7"));
				type = Integer.valueOf(request.getParameter("type7"));
				setype = request.getParameterValues("setype7");
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
				utils.Insert(null, username, name, sex, fight_id, planeId, type, before, asile, window, gate, null);
				tab = request.getParameter("tabname");

				// 找不到有用户预定座位
				if (utils.findLast(username) == 0) {
						// 满足需求执行
					if (utils.check(tab, before, asile, window, gate) != null 
				&&utils.check(tab, before, asile, window, gate).size()!=0) {
						seties = utils.check(tab, before, asile, window, gate);
						id = seties.get(0).getId();
						utils.isContent(name, username);
					} else {
						// 如果不满足需求执行
						seties = utils.findOther(tab, before, asile, window, gate);
						id = seties.get(0).getId();
					}
				}
				// 有用户先前预定座位
				if (utils.findLast(username) != 0) {
					// 满足需求执行
					if(utils.check(tab, before, asile, window, gate)!=null
				&& utils.check(tab, before, asile, window, gate).size()!=0) {
					      //满足需求就近
						if (utils.findCloseByType(tab, before, asile, window, gate, id)!=null
								&&utils.findCloseByType(tab, before, asile, window, gate, id).size()>0) {
							seties = utils.findCloseByType(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//满足需求不就近
							seties = utils.check(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
						utils.isContent(name, username);
					
					} else {
						// 如果不满足需求执行
					id = utils.findLast(username);
					    //不满足需求就近
					if (utils.check(tab, before, asile, window, gate).size() ==0 ){
						if (utils.findunContentOther(tab, before, asile, window, gate, id).size() != 0) {
							seties = utils.findunContentOther(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//不满足需求不就近
							seties = utils.findOther(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
					}
				}
			}
				utils.updateId(name, username, id);
				utils.changeChooses(tab, id);
			}
			// 插入第八条团队成员信息
			if (request.getParameter("person8") != null && !"".equals(request.getParameter("person8"))) {
				int before = 0;
				int window = 0;
				int asile = 0;
				int gate = 0;
				name = request.getParameter("person8");
				sex = Integer.valueOf(request.getParameter("sex8"));
				type = Integer.valueOf(request.getParameter("type8"));
				setype = request.getParameterValues("setype8");
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
				utils.Insert(null, username, name, sex, fight_id, planeId, type, before, asile, window, gate, null);
				tab = request.getParameter("tabname");

				// 找不到有用户预定座位
				if (utils.findLast(username) == 0) {
						// 满足需求执行
					if (utils.check(tab, before, asile, window, gate) != null 
				&&utils.check(tab, before, asile, window, gate).size()!=0) {
						seties = utils.check(tab, before, asile, window, gate);
						id = seties.get(0).getId();
						utils.isContent(name, username);
					} else {
						// 如果不满足需求执行
						seties = utils.findOther(tab, before, asile, window, gate);
						id = seties.get(0).getId();
					}
				}
				// 有用户先前预定座位
				if (utils.findLast(username) != 0) {
					// 满足需求执行
					if(utils.check(tab, before, asile, window, gate)!=null
				&& utils.check(tab, before, asile, window, gate).size()!=0) {
					      //满足需求就近
						if (utils.findCloseByType(tab, before, asile, window, gate, id)!=null
								&&utils.findCloseByType(tab, before, asile, window, gate, id).size()>0) {
							seties = utils.findCloseByType(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//满足需求不就近
							seties = utils.check(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
						utils.isContent(name, username);
					
					} else {
						// 如果不满足需求执行
					id = utils.findLast(username);
					    //不满足需求就近
					if (utils.check(tab, before, asile, window, gate).size() ==0 ){
						if (utils.findunContentOther(tab, before, asile, window, gate, id).size() != 0) {
							seties = utils.findunContentOther(tab, before, asile, window, gate, id);
							id = seties.get(0).getId();
						} else {
							//不满足需求不就近
							seties = utils.findOther(tab, before, asile, window, gate);
							id = seties.get(0).getId();
						}
					}
				}
			}
				utils.updateId(name, username, id);
				utils.changeChooses(tab, id);
			}
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
