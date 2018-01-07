package com.school.controler;

import com.alibaba.fastjson.JSON;
import com.school.dao.Securitydao;
import com.school.entity.SecurityEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class SecurityControler {

    @Resource
    Securitydao securitydao;



    @RequestMapping(value = "selectdim")
    public void selectdim(HttpServletResponse response,HttpServletRequest request) throws IOException {
        String securityname=request.getParameter("1");
        List<SecurityEntity> list=securitydao.selectdim(securityname);
        response.setCharacterEncoding("utf-8");
        response.getWriter().write(JSON.toJSONString(list));
    }


    @RequestMapping(value = "securityquery")
    public void securityquery(HttpServletResponse response) throws IOException {
        Map<String,Object> map=new HashMap<String ,Object>();
        List<SecurityEntity> list=securitydao.security();
        map.put("rows",list);
//        map.put("total",list);
        response.setCharacterEncoding("utf-8");
        response.getWriter().write(JSON.toJSONString(map));
    }

    @RequestMapping(value = "insertsecu")
    public  void insertsecu(HttpServletResponse response ,SecurityEntity securityEntity) throws IOException {

        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
        String hehe = dateFormat.format( now );
        securityEntity.setsecurityentrytime(hehe);
        securitydao.insertsecu(securityEntity);
        response.setCharacterEncoding("utf-8");
        response.getWriter().write("\"add\":\"add\"");
    }
    @RequestMapping(value = "updatesecu")
    public  void updatesecu(HttpServletResponse response ,SecurityEntity securityEntity) throws IOException {
        securitydao.updatesecu(securityEntity);
        response.setCharacterEncoding("utf-8");
        response.getWriter().write("\"update\":\"update\"");
    }
    @RequestMapping(value = "delsecu")
    public  void delsecu(HttpServletResponse response,HttpServletRequest request) throws IOException {
        String securityid=request.getParameter("securityid");
        securitydao.delsecu(Integer.parseInt(securityid));
        response.setCharacterEncoding("utf-8");
        response.getWriter().write("\"del\":\"del\"");
    }



}
