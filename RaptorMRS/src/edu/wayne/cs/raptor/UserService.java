package edu.wayne.cs.raptor;

import java.util.List;

import org.hibernate.Session;

public class UserService implements IUserService {

	/**
	 * 
	 * @see edu.wayne.cs.raptor.IUserService#saveUser(edu.wayne.cs.raptor.User)
	 */
	@Override
	public User saveUser(User user) {
		Session userSession = HibernateUtil.getSessionFactory().openSession();
		userSession.beginTransaction();
		userSession.saveOrUpdate(user);
		userSession.close();
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
