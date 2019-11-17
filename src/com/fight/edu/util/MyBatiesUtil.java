package com.fight.edu.util;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MyBatiesUtil {
 // 获取SqlSession的方法
	public static SqlSession getSqlSession() {
		//获取SqlSessionFactoryBuilder
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		//加载sqlMapConfig.xml;
		//MybatisUtil:自己写的类都可以
		ClassLoader loader = MyBatiesUtil.class.getClassLoader();
		InputStream inputStream = loader.getResourceAsStream("SqlMapConfig.xml");
		//通过SqlSessionFactoryBuilder获取SqlSessionFactory
		SqlSessionFactory factory = builder.build(inputStream);
		//通过SqlSessionFactory获取SqlSession
		SqlSession session = factory.openSession();
		return session;
	}
	
	public static void main(String[]args) {
		SqlSession session = MyBatiesUtil.getSqlSession();
		System.out.println(session);
		session.close();
	}
	
}
