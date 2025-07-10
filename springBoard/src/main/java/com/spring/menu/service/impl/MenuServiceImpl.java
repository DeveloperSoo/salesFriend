package com.spring.menu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.menu.dao.MenuDao;
import com.spring.menu.dto.MyMenuDto;
import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;

@Service
public class MenuServiceImpl implements MenuService{

	@Autowired MenuDao mDao;
	
	
	@Override
	public List<MenuVo> selectAll() {
		// TODO Auto-generated method stub
		return mDao.selectAll();
	}


	@Override
	public List<MenuVo> selectByCheck(List<String> menuList) {
		// TODO Auto-generated method stub
		return mDao.selectByCheck(menuList);
	}


	@Override
	public int selectMyMenu(String id) {
		// TODO Auto-generated method stub
		return mDao.selectMyMenu(id);
	}


	@Override
	public int updateMyMenu(List<MyMenuDto> myList) {
		// TODO Auto-generated method stub
		return mDao.updateMyMenu(myList);
	}


	@Override
	public int insertMyMenu(List<MyMenuDto> myList) {
		// TODO Auto-generated method stub
		return mDao.insertMyMenu(myList);
	}


	@Override
	public int deleteMyMenu(String id) {
		// TODO Auto-generated method stub
		return mDao.deleteMyMenu(id);
	}


	@Override
	public List<MyMenuDto> selectMyMenuList(String id) {
		// TODO Auto-generated method stub
		return mDao.selectMyMenuList(id);
	}

}
