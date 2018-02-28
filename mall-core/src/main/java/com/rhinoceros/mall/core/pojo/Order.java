package com.rhinoceros.mall.core.pojo;

import com.rhinoceros.mall.core.enumeration.OrderStatus;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 订单实体
 */
@Data
public class Order {
    /**
     * 订单id
     */
    private String oid;
    /**
     * 订单状态
     */
    private OrderStatus status;
    /**
     * 订单编号
     */
    private String identifier;
    /**
     * 创建时间
     */
    private Date createAt;
    /**
     * 发货时间
     */
    private Date deleverAt;
    /**
     *总价
     */
    private BigDecimal totalPrice;
    /**
     * 快递单号
     */
    private String expressNum;
    /**
     * 订单对应的用户id
     */
    private String userId;


}

