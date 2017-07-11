package com.xlr.demo.entity;

/**
 * POJO类GeBcMaxNoId
 */
public class GeBcMaxNoId implements java.io.Serializable {
    private static final long serialVersionUID = 1L;

    /** 属性groupNo */
    private String groupNo;

    /** 属性maxNo */
    private String maxNo;

    /**
     * 类GeBcMaxNoId的默认构造方法
     */
    public GeBcMaxNoId() {
    }

    /**
     * 属性groupNo的getter方法
     */

    public String getGroupNo() {
        return this.groupNo;
    }

    /**
     * 属性groupNo的setter方法
     */
    public void setGroupNo(String groupNo) {
        this.groupNo = groupNo;
    }

    /**
     * 属性maxNo的getter方法
     */

    public String getMaxNo() {
        return this.maxNo;
    }

    /**
     * 属性maxNo的setter方法
     */
    public void setMaxNo(String maxNo) {
        this.maxNo = maxNo;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof GeBcMaxNoId)) {
            return false;
        }
        GeBcMaxNoId castOther = (GeBcMaxNoId) other;

        return ((this.getGroupNo() == castOther.getGroupNo()) || (this
                .getGroupNo() != null && castOther.getGroupNo() != null && this
                .getGroupNo().equals(castOther.getGroupNo())))
                && ((this.getMaxNo() == castOther.getMaxNo()) || (this
                        .getMaxNo() != null && castOther.getMaxNo() != null && this
                        .getMaxNo().equals(castOther.getMaxNo())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result
                + (getGroupNo() == null ? 0 : this.getGroupNo().hashCode());
        result = 37 * result
                + (getMaxNo() == null ? 0 : this.getMaxNo().hashCode());
        return result;
    }

}
