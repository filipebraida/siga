package ufrrj.siga.service;

import java.util.List;

import ufrrj.siga.model.User;

public interface UserService {

	User findById(Integer id);
	
	List<User> findAll();

	void saveOrUpdate(User user);
	
	void delete(int id);
	
}