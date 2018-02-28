package com.rhinoceros.mall.core.pojo;

import lombok.Data;

/**
 * 商品分类实体
 */
@Data
public class GoodType {
    /**
     * 商品分类id
     */
    private String gtid;
    /**
     * 分类名称
     */
    private String name;
    /**
     * 上级分类
     */
    private String parentId;
}
