package com.school.dao;

import com.school.entity.Authentity;

import java.util.List;
import java.util.Map;

public interface Authdao {
    public List<Authentity> authquery();
    public void authinsert(Authentity authentity);
}
