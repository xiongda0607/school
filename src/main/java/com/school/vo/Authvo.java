package com.school.vo;

public class Authvo {
    private boolean isparent;
    private  Integer aid;
    private String aname;
    private  String pid;
    private  String amark;
    private String path;
    private  String bottonauth;

    public Authvo() {    }

    @Override
    public String toString() {
        return "Authvo{" +
                "isparent=" + isparent +
                ", aid=" + aid +
                ", aname='" + aname + '\'' +
                ", pid='" + pid + '\'' +
                ", amark='" + amark + '\'' +
                ", path='" + path + '\'' +
                ", bottonauth='" + bottonauth + '\'' +
                '}';
    }

    public Authvo(boolean isparent, Integer aid, String aname, String pid, String amark, String path, String bottonauth) {
        this.isparent = isparent;
        this.aid = aid;
        this.aname = aname;
        this.pid = pid;
        this.amark = amark;
        this.path = path;
        this.bottonauth = bottonauth;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getAmark() {
        return amark;
    }

    public void setAmark(String amark) {
        this.amark = amark;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getBottonauth() {
        return bottonauth;
    }

    public void setBottonauth(String bottonauth) {
        this.bottonauth = bottonauth;
    }

    public boolean getIsparent() {
        return isparent;
    }

    public void setIsparent(boolean isparent) {
        this.isparent = isparent;
    }
}
