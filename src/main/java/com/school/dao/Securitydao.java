package com.school.dao;

import com.school.entity.SecurityEntity;

import java.util.List;

public interface Securitydao {

    public List<SecurityEntity> selectdim(String securityname);
    public List<SecurityEntity> security();
    public  void  insertsecu(SecurityEntity securityEntity);
    public void  delsecu(int securityid);
    public void  updatesecu(SecurityEntity securityEntity);

}
