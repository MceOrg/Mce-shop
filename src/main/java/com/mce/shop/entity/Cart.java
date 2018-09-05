package com.mce.shop.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * cart
 * @author 
 */
public class Cart implements Serializable {
    private Integer cartId;

    private Integer custId;

    private Integer shoesDetailId;

    private String quality;

    private Date addTime;

    private Date updateTime;

    private ShoesDetail shoesDetail;

    private static final long serialVersionUID = 1L;

    public Integer getCartId() {
        return cartId;
    }

    public Integer getCustId() {
        return custId;
    }

    public void setCustId(Integer custId) {
        this.custId = custId;
    }

    public Integer getShoesDetailId() {
        return shoesDetailId;
    }

    public void setShoesDetailId(Integer shoesDetailId) {
        this.shoesDetailId = shoesDetailId;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public ShoesDetail getShoesDetail() {
        return shoesDetail;
    }

    public void setShoesDetail(ShoesDetail shoesDetail) {
        this.shoesDetail = shoesDetail;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Cart other = (Cart) that;
        return (this.getCartId() == null ? other.getCartId() == null : this.getCartId().equals(other.getCartId()))
            && (this.getCustId() == null ? other.getCustId() == null : this.getCustId().equals(other.getCustId()))
            && (this.getShoesDetailId() == null ? other.getShoesDetailId() == null : this.getShoesDetailId().equals(other.getShoesDetailId()))
            && (this.getQuality() == null ? other.getQuality() == null : this.getQuality().equals(other.getQuality()))
            && (this.getAddTime() == null ? other.getAddTime() == null : this.getAddTime().equals(other.getAddTime()))
            && (this.getUpdateTime() == null ? other.getUpdateTime() == null : this.getUpdateTime().equals(other.getUpdateTime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getCartId() == null) ? 0 : getCartId().hashCode());
        result = prime * result + ((getCustId() == null) ? 0 : getCustId().hashCode());
        result = prime * result + ((getShoesDetailId() == null) ? 0 : getShoesDetailId().hashCode());
        result = prime * result + ((getQuality() == null) ? 0 : getQuality().hashCode());
        result = prime * result + ((getAddTime() == null) ? 0 : getAddTime().hashCode());
        result = prime * result + ((getUpdateTime() == null) ? 0 : getUpdateTime().hashCode());
        return result;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cartId=" + cartId +
                ", custId=" + custId +
                ", shoesDetailId=" + shoesDetailId +
                ", quality='" + quality + '\'' +
                ", addTime=" + addTime +
                ", updateTime=" + updateTime +
                ", shoesDetail=" + shoesDetail +
                '}';
    }
}