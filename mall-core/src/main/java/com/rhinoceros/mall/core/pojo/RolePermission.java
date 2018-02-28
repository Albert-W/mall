package com.rhinoceros.mall.core.pojo;

import lombok.Data;

/**
 * 角色权限实体
 */
@Data
public class RolePermission {
    /**
     * 角色id
      */
    private String rid;
    /**
     * 权限id
     */
    private String pid;


}
