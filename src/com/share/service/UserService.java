package com.share.service;

import com.share.dao.UserDao;
import com.share.daoimpl.UserDaoImpl;
import com.share.domain.User;
import org.junit.Test;

import javax.jws.soap.SOAPBinding;
import javax.print.DocFlavor;

/**
 * Created by WTJ on 2015/11/19.
 */
public class UserService {
   private UserDao userDao;
	public UserService(){

	}

    public  Boolean registUser(User user) throws Exception{
        userDao=new UserDaoImpl();
	   User u= userDao.getUser(user.getName());

		if(u==null){
			userDao.registUser(user);
			return true;
		}else {
			return false;
		}

    }
    public void updateUser(User user){

    }
    public User loginUser(String userName) throws Exception {

        User u= userDao.getUser(userName);
       return u;
    }

}
