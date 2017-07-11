package com.imgmap.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.imgmap.bean.User;
import com.imgmap.service.UserService;

@Controller @RequestMapping("/user")
@SuppressWarnings({"all"})
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping(value="/index")
	public String user(Model model){
		//PageHelper.startPage(1,1);
		List<User> list = userService.selectAll();
		return "index";
		//return new ModelAndView("index");
	}
	
	@RequestMapping(value="/getproject") @ResponseBody
	public Map getproject(){
		List<User> list = new ArrayList<User>();
		for(int i = 0; i < 100; i ++){
			User user = new User();
			user.setUserid(i + 1);
			user.setUsername("张三");
			user.setRealname("李四");
			list.add(user);
		}
		
		Map map = new HashMap();
		map.put("total", list.size());
		map.put("rows", list);
		return map;
	}
	
	
}
