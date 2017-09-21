package ufrrj.siga.dao;

import java.util.List;

import ufrrj.siga.model.User;

public interface UserDao {

	User findById(Integer id);

	List<User> findAll();

	void save(User user);

	void update(User user);

	void delete(Integer id);

}