/**
 * 
 */
package com.xlr.demo.service.spring;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xlr.demo.service.face.UserDao;
import com.xlr.mybatis.IDao.UserMapper;
import com.xlr.mybatis.domain.User;

/**
 * <p>Title:UserDaoImpl</p>
 * @author xlr
 * @date 2017年7月9日
 */
@Service("userDao")
public class UserDaoImpl implements UserDao {
	
	@Resource
	UserMapper userMapper;
	/* (non-Javadoc)
	 * @see com.xlr.demo.service.face.UserDao#getUsers()
	 */
	public List<User> getUsers() {
		// TODO Auto-generated method stub
		return userMapper.findAll();
	}
	/* (non-Javadoc)
	 * @see com.xlr.demo.service.face.UserDao#findUserById(int)
	 */
	public User findUserById(int id) {
		// TODO Auto-generated method stub
		return userMapper.selectByPrimaryKey(id);
	}

}
