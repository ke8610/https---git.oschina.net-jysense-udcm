package org.ericsson.udcm.utils.model;

public class User extends AbstractEntity {

	public static final String SESSION_USERNAME = "USER";
	private String username;
	private String password;
	private String manager;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}

     @Override
     public String toString() {
         return "User [id=" + this.getSid() + ", user=" + username + ", pwd=" + password + ",manager " + manager + "]";
     }
	
}
