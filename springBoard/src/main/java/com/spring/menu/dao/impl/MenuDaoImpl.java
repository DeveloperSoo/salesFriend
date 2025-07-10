package com.spring.menu.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.menu.dao.MenuDao;
import com.spring.menu.dto.MyMenuDto;
import com.spring.menu.vo.MenuVo;

@Repository
public class MenuDaoImpl implements MenuDao{

	@Autowired SqlSession sqlSession;
	
	@Override
	public List<MenuVo> selectAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("menu.selectAll");
	}

	@Override
	public List<MenuVo> selectByCheck(List<String> menuList) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("menu.selectByCheck", menuList);
	}

	@Override
	public int selectMyMenu(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("menu.selectMyMenu", id);
	}

	@Override
	public int updateMyMenu(List<MyMenuDto> myList) {
		// TODO Auto-generated method stub
		return sqlSession.update("menu.updateMyMenu", myList);
	}

	@Override
	public int insertMyMenu(List<MyMenuDto> myList) {
		// TODO Auto-generated method stub
		int count = 0;
		for(MyMenuDto dto : myList) {
			sqlSession.insert("menu.insertMyMenu", dto);
			count++;
		}
		return count;
	}

	@Override
	public int deleteMyMenu(String id) {
		// TODO Auto-generated method stub
		return sqlSession.delete("menu.deleteMyMenu", id);
	}

	@Override
	public List<MyMenuDto> selectMyMenuList(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("menu.selectMyMenuList", id);
	}

}
