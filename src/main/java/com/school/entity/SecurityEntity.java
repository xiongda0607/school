package com.school.entity;

public class SecurityEntity {
    private  int securityid;
    private String securityname;
    private  String  securitysex;
    private String securityage;
    private String securityentrytime;
    private  String securityphone;

    public SecurityEntity() {
    }

    public SecurityEntity(int securityid, String securityname, String securitysex, String securityage, String securityentrytime, String securityphone) {
        this.securityid = securityid;
        this.securityname = securityname;
        this.securitysex = securitysex;
        this.securityage = securityage;
        this.securityentrytime = securityentrytime;
        this.securityphone = securityphone;
    }

    @Override
    public String toString() {
        return "SecurityEntity{" +
                "securityid=" + securityid +
                ", securityname='" + securityname + '\'' +
                ", securitysex='" + securitysex + '\'' +
                ", securityage='" + securityage + '\'' +
                ", securityentrytime='" + securityentrytime + '\'' +
                ", securityphone='" + securityphone + '\'' +
                '}';
    }

    public int getSecurityid() {
        return securityid;
    }

    public void setSecurityid(int securityid) {
        this.securityid = securityid;
    }

    public String getSecurityname() {
        return securityname;
    }

    public void setSecurityname(String securityname) {
        this.securityname = securityname;
    }

    public String getSecuritysex() {
        return securitysex;
    }

    public void setSecuritysex(String securitysex) {
        this.securitysex = securitysex;
    }

    public String getSecurityage() {
        return securityage;
    }

    public void setSecurityage(String securityage) {
        this.securityage = securityage;
    }

    public String getsecurityentrytime() {
        return securityentrytime;
    }

    public void setsecurityentrytime(String securityentrytime) {
        this.securityentrytime = securityentrytime;
    }

    public String getSecurityphone() {
        return securityphone;
    }

    public void setSecurityphone(String securityphone) {
        this.securityphone = securityphone;
    }
}
