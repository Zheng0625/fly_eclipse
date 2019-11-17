package com.fight.edu.util;

import java.sql.Array;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.SqlSession;

import com.fight.edu.entity.BookTickets;
import com.fight.edu.entity.Seties;

public class Utils {
	// 获取Sqlsession
	// 引入MybatisUtil类
	List<Seties> list = null;
	List<BookTickets> listBt = null;
	SqlSession session = MyBatiesUtil.getSqlSession();
	BookTickets book = new BookTickets();
	Seties seties = new Seties();
	Map<String, Object> map = new HashMap<String, Object>();

	// 在tab_book表插入乘客信息
	public void Insert(Integer id, String username, String name, int sex, int fight_id, int plane_id, int pastype,
			int isbefore, int isasile, int iswindow, int isgate, Timestamp booktime) {
		book.setId(id);
		book.setUser(username);
		book.setName(name);
		book.setSex(sex);
		book.setFight_id(fight_id);
		book.setPlane_id(plane_id);
		book.setPastype(pastype);
		book.setIsbefore(isbefore);
		book.setIsasile(isasile);
		book.setIswindow(iswindow);
		book.setIsgate(isgate);
		book.setBooktime(booktime);
		// 使用Session的insert方法插入数据
		// save为BookSqlMap.xml中insert元素的id名
		session.insert("save", book);
		// 增删改需要的提交事务
		session.commit();

	}

	// 查询未满足需求购票记录
	public List<BookTickets> findunContent(String username) {
		map.put("username", username);
		listBt=session.selectList("findunContentAll",map);
		session.commit();
		return listBt;
	}

	// 更新tab_book表的乘客座位号
	public void updateId(String name, String user, int id) {
		book.setName(name);
		book.setUser(user);
		book.setId(id);
		// 使用Session的insert方法插入数据
		// save为BookSqlMap.xml中insert元素的id名
		session.insert("updateId", book);
		// 增删改需要的提交事务
		session.commit();

	}

	// 根据客户需求查询符合的座位id
	public List<Seties> check(String tab, int isbefore, int isasile, int iswindow, int isgate) {
		map.put("tab", tab);
		map.put("isbefore", isbefore);
		map.put("isasile", isasile);
		map.put("iswindow", iswindow);
		map.put("isgate", isgate);
		// 使用Session的findByType方法插入数据
		// findByType为BookSqlMap.xml中select元素的id名
		list = session.selectList("findByType", map);
		// 增删改查需要的提交事务
		session.commit();
		return list;
	}

	// 更新飞机座位选择状态
	public void changeChoose(String tab, int id) {
		map.put("tab", tab);
		map.put("id", id);
		session.insert("changeChoose", map);
		// 增删改查需要的提交事务
		session.commit();
	}

	// 更新飞机座位选择状态(变为已选)
	public void changeChooses(String tab, int id) {
		seties.setTab(tab);
		seties.setId(id);
		session.insert("changeChoose", seties);
		// 增删改查需要的提交事务
		session.commit();
	}
	// 更新飞机座位选择状态(变为未选)
	public void changeChoosed(String tab, int id) {
		seties.setTab(tab);
		seties.setId(id);
		session.insert("changeChoosed", seties);
		// 增删改查需要的提交事务
		session.commit();
	}

	// 根据飞机id查询所有同机型记录
	public List<BookTickets> findByPlaneId(int tab) {
		map.put("tab", tab);
		listBt = session.selectList("selectPlaneId", map);
		// 增删改查需要的提交事务
		session.commit();
		return listBt;
	}

	// 更新tab_book表飞机id
	public void changePlaneId(int tab1, int tab2) {
		map.put("tab1", tab1);
		map.put("tab2", tab2);
		session.insert("changePlaneId", map);
		// 增删改查需要的提交事务
		session.commit();
	}

	// 查询用户购票记录
	public List<BookTickets> findUserAll(String username) {
		map.put("username", username);
		listBt=session.selectList("findUserAll", map);
		// 增删改查需要的提交事务
		session.commit();
		return listBt;
	}
	// 关联查询用户购票记录
		public List<BookTickets> findUnion(String username,String tab) {
			map.put("user", username);
			map.put("tab", tab);
			listBt=session.selectList("findUnion", map);
			// 增删改查需要的提交事务
			session.commit();
			return listBt;
		}
	// 查找用户最后一条记录
	public int findLast(String username) {
		map.put("username", username);
		int classid = session.insert("findLast", map);
		// 增删改查需要的提交事务
		session.commit();
		return classid;
	}

	// 查询就近需求座位
	public List<Seties> findCloseByType(String tab, int isbefore, int isasile, int iswindow, int isgate, int id) {
		map.put("tab", tab);
		map.put("isbefore", isbefore);
		map.put("isasile", isasile);
		map.put("iswindow", iswindow);
		map.put("isgate", isgate);
		map.put("id", id);
		list = session.selectList("findCloseByType", map);
		// 增删改查需要的提交事务
		session.commit();
		return list;
	}
	//更新满足需求
	public void isContent(String name, String username) {
		map.put("name", name);
		map.put("username", username);
		session.insert("updateContent", map);
		// 增删改查需要的提交事务
		session.commit();
	}
	//更新不满足需求
	public void isunContent(String name, String username) {
		map.put("name", name);
		map.put("username", username);
		session.insert("updateunContent", map);
		// 增删改查需要的提交事务
		session.commit();
	}
	//查询不满足需求的座位
	public List<Seties> findOther(String tab, int isbefore, int isasile, int iswindow, int isgate) {
		map.put("tab", tab);
		map.put("isbefore", isbefore);
		map.put("isasile", isasile);
		map.put("iswindow", iswindow);
		map.put("isgate", isgate);
		list = session.selectList("findOther", map);
		// 增删改查需要的提交事务
		session.commit();
		return list;
	}
	//查询不满足需求的就近座位
	public List<Seties> findunContentOther(String tab, int isbefore, int isasile, int iswindow, int isgate,int id) {
		map.put("tab", tab);
		map.put("isbefore", isbefore);
		map.put("isasile", isasile);
		map.put("iswindow", iswindow);
		map.put("isgate", isgate);
		map.put("id", id);
		list = session.selectList("findunContentOther", map);
		// 增删改查需要的提交事务
		session.commit();
		return list;
	}
	//查询不满足需求的用户名,姓名和需求
	public List<BookTickets> findunConNotes() {
		listBt = session.selectList("findunConNotes");
		// 增删改查需要的提交事务
		session.commit();
		return listBt;
	}
	// 更新tab_book表飞机id
	public void changezero(int tab) {
		map.put("tab1", tab);
		session.insert("changezero", map);
		// 增删改查需要的提交事务
		session.commit();
	}
}
