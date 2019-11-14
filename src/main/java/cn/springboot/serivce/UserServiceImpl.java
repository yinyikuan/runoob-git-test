package cn.springboot.serivce;

import cn.springboot.entity.User;
import cn.springboot.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements  UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public void addUser(User user) {
        userMapper.insertUser(user);
    }

    @Override
    public void removeUser(Integer id) {
        userMapper.deleteUser(id);
    }

    @Override
    public void modifyUser(User user) {
        userMapper.updateUser(user);
    }

    @Override
    public List<User> findListUser(User user) {
        return userMapper.selectListUser(user);
    }

    @Override
    public User findUserById(Integer id) {
        return userMapper.selectUserById(id);
    }
}
