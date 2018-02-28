package com.rhinoceros.mall.core.pojo;

import lombok.Data;

/**
 * 订单商品关系表
 */
@Data
public class OrderGoods {
    /**
     * 商品id
     */
    private String gid;
    /**
     * 订单id
     */
    private String oid;
}
