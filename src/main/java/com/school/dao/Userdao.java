package com.school.dao;

import com.school.entity.Userentity;

public interface Userdao {

    public Userentity login(Userentity userentity);
    public void insertuser(Userentity userentity);
    public  void deluser(int id);
    public  void updateuser(Userentity userentity);








}
