package org.ericsson.udcm.utils.service;

import org.ericsson.udcm.utils.model.User;

public interface UserService extends BaseService{

	public User isUserExist(User user);

}
