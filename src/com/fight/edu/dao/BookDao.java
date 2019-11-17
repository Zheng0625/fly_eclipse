package com.fight.edu.dao;

import java.util.Map;

import com.fight.edu.entity.BookTickets;
import com.fight.edu.entity.Seties;


public interface BookDao {
	public void save(BookTickets bTickets);
	public Seties findByType(Map map);
	public void updateId(Seties seties);
	public void changeChoose(Seties seties);
	
}
