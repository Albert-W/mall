package com.rhinoceros.mall.core.enumeration;

/**
 * 订单状态
 */
public enum OrderStatus {
    /**
     * 待支付
     */
    WAIT_PAY,
    /**
     * 已支付
     */
    PAYED,
    /**
     * 已发货
     */
    SHIPPED,

    /**
     * 已结束
     */
    FINISHED
}
