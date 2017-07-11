package com.xlr.demo.entity;

/**
 * POJO类GeBcMaxno
 */
public class GeBcMaxNo implements java.io.Serializable {
    private static final long serialVersionUID = 1L;
    
    public static final String FIRST = "1";
    public static final String SECOND="2";

    public static final String FLAG_YES = "1";
    public static final String FLAG_NO = "0";

    /** 属性网点编号 */
    private GeBcMaxNoId id;

    /** 属性是否有效(IsValidate) */
    private String isValidate;

    /** 属性标志位(Flag) */
    private String flag;

    /** 属性备注(Remark) */
    private String remark;

    /**
     * 类GeBcMaxno的默认构造方法
     */
    public GeBcMaxNo() {
    }

    /**
     * 属性网点编号的getter方法
     */
    public GeBcMaxNoId getId() {
        return this.id;
    }

    /**
     * 属性网点编号的setter方法
     */
    public void setId(GeBcMaxNoId id) {
        this.id = id;
    }

    /**
     * 属性是否有效(IsValidate)的getter方法
     */

    public String getIsValidate() {
        return this.isValidate;
    }

    /**
     * 属性是否有效(IsValidate)的setter方法
     */
    public void setIsValidate(String isValidate) {
        this.isValidate = isValidate;
    }

    /**
     * 属性标志位(Flag)的getter方法
     */

    public String getFlag() {
        return this.flag;
    }

    /**
     * 属性标志位(Flag)的setter方法
     */
    public void setFlag(String flag) {
        this.flag = flag;
    }

    /**
     * 属性备注(Remark)的getter方法
     */
    public String getRemark() {
        return this.remark;
    }

    /**
     * 属性备注(Remark)的setter方法
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

}
