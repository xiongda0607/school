package com.school.controler;

import com.mysql.jdbc.StringUtils;
import com.school.dao.Userdao;
import com.school.entity.Userentity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class UserControler {

    @Resource
    Userdao userdao;

@RequestMapping(value = "searchuser")
    public String searchuser(HttpServletResponse response, @RequestParam(name="uname") String uname, @RequestParam(name="upwd") String upwd) throws IOException {
        Userentity userentity=new Userentity();
        String uname2=new String(uname.getBytes("iso-8859-1"),"utf-8");
        userentity.setUname(uname2);
        userentity.setUpwd(upwd);
        System.out.println(uname2);
        Userentity currentUser=userdao.login(userentity);
        if(currentUser==null){
            return "no";
        }else {
            return "success";
}
}








}
