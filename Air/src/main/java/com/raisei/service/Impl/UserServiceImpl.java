package com.raisei.service.Impl;

import com.raisei.dao.ItineraryMapper;
import com.raisei.dao.OrderMapper;
import com.raisei.dao.UserMapper;
import com.raisei.pojo.Itinerary;
import com.raisei.pojo.User;
import com.raisei.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    @Qualifier("userMapper")
    private UserMapper userMapper;
    @Autowired
    private ItineraryMapper itineraryMapper;
    @Autowired
    private OrderMapper orderMapper;


    @Override
    public String doLogin(HttpSession session, String account, String password, Model model) {
        User user = userMapper.selectUserByAccount(account);
        if(user != null) {
            if(user.getPassword().equals(password)){
                //user存入session
                session.setAttribute("user", user);
                System.out.println("密码正确，登录成功");
                //查询一个用户的所有订单号
                List<Integer> orderIds = orderMapper.selectIdByUserId(user.getUserId());
                //查询一个用户的所有已订购路线
                List<Itinerary> itineraries = itineraryMapper.selectByUserId(user.getUserId());
                model.addAttribute("itineraries",itineraries);
                model.addAttribute("orderIds",orderIds);

                return "user/user";
            }
            System.out.println("密码错误");
        }
        System.out.println("账号错误");
        return "userLogin";
    }

    @Override
    public String doLoginAdmin(HttpSession session, String account, String password, Model model) {
        User user = userMapper.selectUserByAccount(account);
        if(user.getPassword().equals(password)){
            //user存入session
            session.setAttribute("user", user);
            System.out.println("密码正确，登录成功");
            //查询所有用户的所有订单号
            List<Integer> orderIds = orderMapper.queryId();
            //查询所有用户的所有已订购路线
            List<Itinerary> itineraries = itineraryMapper.selectByUserId(user.getUserId());

            List<User> users = userMapper.queryAllUser();
            model.addAttribute("users",users);
            model.addAttribute("itineraries",itineraries);
            model.addAttribute("orderIds",orderIds);

            return "/admin/admin";
        }
        System.out.println("密码错误");
        return "userLogin";
    }

    @Override
    public String registerUser(User user) {
        int i = userMapper.registerUser(user);
        if(i>0){
            return "redirect:userLogin";
        }
        return "user/register";
    }


    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public String selectPassword(String account) {
        return userMapper.selectPassword(account);
    }

    @Override
    public User selectUserByAccount(String account) {
        return userMapper.selectUserByAccount(account);
    }

    @Override
    public int selectIdByAccount(String account) {
        return userMapper.selectIdByAccount(account);
    }

    @Override
    public int deleteUser(int userId) {
        return userMapper.deleteUser(userId);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }




}
