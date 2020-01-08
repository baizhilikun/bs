package com.baizhi.mapper;

import com.baizhi.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    List<User> queryall(@Param("start") Integer start,@Param("row")Integer row);

    void deletebyid(String id);

    void updatebyid(User user);

    void insert(User user);

    Integer getcount();
}
