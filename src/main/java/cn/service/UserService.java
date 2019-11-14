package cn.service;

import cn.entity.User;

import java.util.List;

public interface UserService {

    public void addUser(User user);
    public void removeUser(Integer id);
    public void modifyUser(User user);
    public List<User> findListUser(User user);
    public User findUserById(Integer id);
}
