package com.rhinoceros.mall.core.pojo;

import lombok.Data;

/**
 * 角色实体
 */
@Data
public class Role {
    /**
     * 角色id
     */
    private String rid;
    /**
     * 角色名
     */
    private String name;
    /**
     * 创建时间
     */
    private String createAt;

}
