package edu.wayne.cs.raptor;

import java.util.List;

import org.hibernate.Session;

public class UserService implements IUserService {
	
	
	//how to deal with nested class attributes... maybe try the dirty way of jsut including all a user's fields and then use them to build a user to save?
    //private User user;
	
	@Override
	public User saveUser(User user) {
		Session userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		userSession.save(user);
		return null;
		
	}

	@Override
	public User getUser(int userID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}


	

}
