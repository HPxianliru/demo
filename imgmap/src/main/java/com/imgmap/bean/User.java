package com.imgmap.bean;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_user")
public class User {
    /**
     * 用户ID
     */
    @Id
    private Integer userid;

    /**
     * 用户名
     */
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 真实姓名
     */
    private String realname;

    /**
     * 添加时间
     */
    private Date createdate;

    /**
     * 部门ID
     */
    private Integer deptid;

    /**
     * 用户状态（1、正常0、禁用）
     */
    private Integer userstate;

    /**
     * 用户可通过Key来获取实景
     */
    private String userkey;

    /**
     * 数据存放位置
     */
    private String datapath;

    /**
     * 获取用户ID
     *
     * @return userid - 用户ID
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * 设置用户ID
     *
     * @param userid 用户ID
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * 获取用户名
     *
     * @return username - 用户名
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置用户名
     *
     * @param username 用户名
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取密码
     *
     * @return password - 密码
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置密码
     *
     * @param password 密码
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取真实姓名
     *
     * @return realname - 真实姓名
     */
    public String getRealname() {
        return realname;
    }

    /**
     * 设置真实姓名
     *
     * @param realname 真实姓名
     */
    public void setRealname(String realname) {
        this.realname = realname;
    }

    /**
     * 获取添加时间
     *
     * @return createdate - 添加时间
     */
    public Date getCreatedate() {
        return createdate;
    }

    /**
     * 设置添加时间
     *
     * @param createdate 添加时间
     */
    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    /**
     * 获取部门ID
     *
     * @return deptid - 部门ID
     */
    public Integer getDeptid() {
        return deptid;
    }

    /**
     * 设置部门ID
     *
     * @param deptid 部门ID
     */
    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

    /**
     * 获取用户状态（1、正常0、禁用）
     *
     * @return userstate - 用户状态（1、正常0、禁用）
     */
    public Integer getUserstate() {
        return userstate;
    }

    /**
     * 设置用户状态（1、正常0、禁用）
     *
     * @param userstate 用户状态（1、正常0、禁用）
     */
    public void setUserstate(Integer userstate) {
        this.userstate = userstate;
    }

    /**
     * 获取用户可通过Key来获取实景
     *
     * @return userkey - 用户可通过Key来获取实景
     */
    public String getUserkey() {
        return userkey;
    }

    /**
     * 设置用户可通过Key来获取实景
     *
     * @param userkey 用户可通过Key来获取实景
     */
    public void setUserkey(String userkey) {
        this.userkey = userkey;
    }

    /**
     * 获取数据存放位置
     *
     * @return datapath - 数据存放位置
     */
    public String getDatapath() {
        return datapath;
    }

    /**
     * 设置数据存放位置
     *
     * @param datapath 数据存放位置
     */
    public void setDatapath(String datapath) {
        this.datapath = datapath;
    }
}