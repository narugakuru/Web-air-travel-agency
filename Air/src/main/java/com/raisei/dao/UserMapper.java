package com.raisei.dao;

import com.raisei.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    int addUser(User user);
    String selectPassword(@Param("account") String account);
    User selectUserByAccount(String account);
    int selectIdByAccount(String account);

    int  deleteUser(@Param("userId") Integer userId);
    int updateUser(User user);
    int registerUser(User user);
    List<User> queryAllUser();

}
