package com.rigor.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rigor.model.User;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession(){
		return sessionFactory.getCurrentSession();
	}
	@Override
	public void addUser(User user) {
		getCurrentSession().save(user);
	}

	@Override
	public void updateUser(User user) {
		User userToUpdate = getUser(user.getUserID());
		userToUpdate.setFirstName(user.getFirstName());
		userToUpdate.setLastName((user.getLastName()));
		userToUpdate.setGender((user.getGender()));
		userToUpdate.setAddressLine1((user.getAddressLine1()));
		userToUpdate.setAddressLine2((user.getAddressLine2()));
		userToUpdate.setCity((user.getCity()));
		userToUpdate.setMobile((user.getMobile()));
		userToUpdate.setEmail((user.getEmail()));
		userToUpdate.setDepartment((user.getDepartment()));
		getCurrentSession().update(userToUpdate);
	}

	@Override
	public User getUser(int id) {
		User user = (User) getCurrentSession().get(User.class, id);
		return user;
	}

	@Override
	public void deleteUser(int id) {
		User user = getUser(id);
		if(user != null){
			getCurrentSession().delete(user);
		}
	}

	@SuppressWarnings("unchecked")
	public List<User> getUsers() {
		return getCurrentSession().createQuery("from User").list();
	}

}
