package com._520it.wms.mapper;

import com._520it.wms.domain.Role;
import com._520it.wms.domain.SystemMenu;
import com._520it.wms.query.QueryObject;
import com._520it.wms.query.SystemMenuQueryObject;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface SystemMenuMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SystemMenu record);

    SystemMenu selectByPrimaryKey(Long id);

    List<SystemMenu> selectAll();

    int updateByPrimaryKey(SystemMenu record);

    int query4count(SystemMenuQueryObject qo);

    List<SystemMenu> query4list(SystemMenuQueryObject qo);

    List<Map<String,Object>> queryMenuBySn(String parentSn);

    List<Map<String,Object>> queryMenuBySnAndEmpId(@Param("parentSn") String parentSn, @Param("empId") Long empId);
}