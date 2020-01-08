package com.baizhi.service;

import com.baizhi.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface UserService {
    Map<String ,Object> queryall(Integer page,Integer row);

    void deletebyid(String id);

    void update(User user);

    void insert(User user);

    Integer getcount();
}
