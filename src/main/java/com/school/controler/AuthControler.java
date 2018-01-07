package com.school.controler;

import com.alibaba.fastjson.JSON;
import com.school.dao.Authdao;
import com.school.entity.Authentity;
import com.school.vo.Authvo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AuthControler {

    @Resource
    Authdao authdao;

    @RequestMapping(value = "ztreequery")
    public void ztreequery(HttpServletResponse response) throws IOException {
        Map<String ,Object> map=new HashMap<String ,Object>();
        List<Authentity> list=authdao.authquery();
        map.put("rows",list);
        response.setCharacterEncoding("utf-8");
        response.getWriter().write(JSON.toJSONString(map));
    }

    @RequestMapping(value = "authinsert")
    public  void authinsert(HttpServletResponse response ,Authentity authentity) throws IOException {
        authdao.authinsert(authentity);
        response.setCharacterEncoding("utf-8");
        response.getWriter().write("\"add\":\"add\"");
    }





}
