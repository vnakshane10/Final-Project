package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.UserDetail;

@Repository("userDAO")
@Transactional
public class UserDetailDAOImpl implements UserDAO
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean registerUser(UserDetail user) {
		try
		{
		Session session=sessionFactory.openSession();
		sessionFactory.getCurrentSession().save(user);
		System.out.println("Session Created");
		System.out.println("User Name:"+user.getUserName());
		session.save(user);
		session.close();
		System.out.println("User Added");
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);	
		return false;
		}
	}

	

	@Override
	public List<UserDetail> userDetail() {
		Session session=sessionFactory.openSession();
		List<UserDetail>userList=(List<UserDetail>)session.createQuery("from UserDetail").list();
		return null;
		
	}

	
	}
	
	

	


