package org.ericsson.udcm.utils.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.ericsson.udcm.utils.base.PageResults;
import org.ericsson.udcm.utils.model.User;
import org.ericsson.udcm.utils.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String userLogin(User user,HttpSession session){
		user = userService.isUserExist(user);
		if(user == null){
			return "login";
		}else{
			session.setAttribute(User.SESSION_USERNAME, user);
			return "main";
		}
	}
	@RequestMapping("/mainIndex")
	public String mainIndex(User user,HttpSession session){
		if(session.getAttribute(User.SESSION_USERNAME)==null||"".equals(session.getAttribute(User.SESSION_USERNAME))){
			return "login";
		}else{
			return "main";
		}
	}
	@RequestMapping("/saveUser")  
    public void saveUser(){
        User user=new User();  
        user.setPassword("admin1");
        user.setUsername("admin2");  
        userService.insert(User.class, user);
    }
	
	@RequestMapping("/deleteUser")  
	public void deleteUser(){
		User user=new User();
		user.setSid(2);
	    user.setPassword("admin");
	    user.setUsername("admin123");  
		userService.delete(User.class, user);
	}
	@RequestMapping("/deleteUserById")  
	public void deleteUserById(){
		userService.deleteByPrimaryKey(User.class, 1);
	}
	@RequestMapping("/deleteUserByIds")  
	public void deleteUserByIds(){
		List<Long> ids = new ArrayList<Long>();
		ids.add((long) 3);
		ids.add((long) 4);
		userService.deleteAllByPrimaryKey(User.class,ids);
	}
	@RequestMapping("/deleteAllUser")  
	public void deleteAllUser(){
		userService.deleteAll(User.class);
	}
	@RequestMapping("/deleteUserByParams")  
	public void deleteByParams(){
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("username", "admin1");
		userService.deleteByParams(User.class, params);
	}
	
	@RequestMapping("/updateUser")  
	public void updateUser(){
		User user=new User();
		user.setSid(4);
	    user.setPassword("admin123");
	    user.setUsername("admin123");
		userService.update(User.class,user);
	}
	@RequestMapping("/updateAllUser")  
	public void updateAllUser(){
		List<User> users = new ArrayList<User>();
		User user1=new User();
		user1.setSid(2);
	    user1.setPassword("admin");
	    user1.setUsername("admin222");
	    User user2=new User();
		user2.setSid(3);
	    user2.setPassword("admin");
	    user2.setUsername("admin333");
	    users.add(user1);
	    users.add(user2);
		userService.updateAll(User.class, users);
	}
	
	@RequestMapping("/getAllUser")  
	public void getAllUser(){
		List<User> userList = userService.findAll(User.class);
		for(User user:userList){
			System.out.println(user.getSid()+":"+user.getUsername()+":"+user.getPassword());
		}
	}
	
	@RequestMapping("/countUser")  
	public void countUser(){
		long userList = userService.findCount(User.class, null);
		System.out.println(userList+"==============");
	}
	
}
