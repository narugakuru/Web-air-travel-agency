package com.raisei.service;

import com.raisei.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserService {
    String doLogin(HttpSession httpsession, String account, String password, Model model);
    String doLoginAdmin(HttpSession httpsession, String account, String password, Model model);
    String registerUser(User user);




    int addUser(User user);
    String selectPassword(@Param("account") String account);
    User selectUserByAccount(String account);
    int selectIdByAccount(String account);

    int  deleteUser(@Param("userId") int userId);
    int updateUser(User user);
    List<User> queryAllUser();
}
