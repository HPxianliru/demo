/**
 * 
 */
package com.xlr.demo.service.face;

import java.util.List;

import com.xlr.mybatis.domain.User;

/**
 * <p>Title:UserDao</p>
 * @author xlr
 * @date 2017年7月9日
 */
public interface UserDao {
		
	List<User> getUsers();
		
	User findUserById(int id);
}
