package com.share.action;

import com.share.domain.User;
import com.share.service.UserService;

public class UserAtion {
    private UserService userService = new UserService();
    private User user;
    private String registedMessage;

    public String getRegistedMessage() {
        return registedMessage;
    }

    public void setRegistedMessage(String registedMessage) {
        this.registedMessage = registedMessage;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String registUser() throws Exception {
        boolean isRegisted = userService.registUser(user);
        // 如果注册成功跳转至首页，并在session中设置user属性
        System.out.println("来自前台" + user);

        if (isRegisted == true) {

            registedMessage = "注册成功";

        } else {
            registedMessage = "用户名已被注册";
        }
        return "regist";
    }
    public String loginUser() throws Exception {
        User u=userService.loginUser(user.getName());
        if(u!=null){
            
        }
        return "login";
    }

}
