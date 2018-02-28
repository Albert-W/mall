package com.rhinoceros.mall.core.pojo;

import com.rhinoceros.mall.core.enumeration.GoodsStatus;
import lombok.Data;

import java.math.BigDecimal;

/**
 * 商品实体
 */
@Data
public class Goods {
    /**
     * 商品id
     */
    private String gid;
    /**
     * 商品名称
     */
    private String name;
    /**
     * 价格
     */
    private BigDecimal price;
    /**
     * 折扣
     */
    private float discount;
    /**
     * 商品状态
     */
    private GoodsStatus status;
    /**
     * 商品类型
     */
    private String type;

}
