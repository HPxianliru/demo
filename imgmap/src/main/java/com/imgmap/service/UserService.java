package com.imgmap.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.imgmap.bean.User;
import com.imgmap.dao.UserMapper;

@Service("userService")
@SuppressWarnings({"all"})
public class UserService {
	
	@Resource
	UserMapper mapper;
	
	public List<User> selectAll(){
		return mapper.selectAll();
	}
}
