package org.ericsson.udcm.utils.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ericsson.udcm.utils.dao.UserDao;
import org.ericsson.udcm.utils.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userService")
public class UserServiceImpl extends BaseServiceImpl implements UserService{

	@Autowired
	private UserDao userdao;

	@Override
	public User isUserExist(User user) {
		// TODO Auto-generated method stub
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("username", user.getUsername());
		params.put("password", user.getPassword());
		params.put("manager", user.getManager());
		List<User> userList = userdao.findByParams(User.class, params);
		if(userList!=null&&userList.size()>0){
			return userList.get(0);
		}
		return null;
	}
}
