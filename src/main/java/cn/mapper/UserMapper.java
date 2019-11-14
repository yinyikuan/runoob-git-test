package cn.mapper;

import cn.entity.User;

import java.util.List;

public interface UserMapper {

    public void insertUser(User user);

    public void deleteUser(Integer id);

    public void updateUser(User user);

    public User selectUserById(Integer id);

    public List<User> selectListUser();
}
