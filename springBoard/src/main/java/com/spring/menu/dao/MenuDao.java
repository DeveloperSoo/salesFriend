package com.spring.menu.dao;

import java.util.List;

import com.spring.menu.dto.MyMenuDto;
import com.spring.menu.vo.MenuVo;

public interface MenuDao {

	List<MenuVo> selectAll();

	List<MenuVo> selectByCheck(List<String> menuList);

	int selectMyMenu(String id);

	int updateMyMenu(List<MyMenuDto> myList);

	int insertMyMenu(List<MyMenuDto> myList);

	int deleteMyMenu(String id);

	List<MyMenuDto> selectMyMenuList(String id);

}
