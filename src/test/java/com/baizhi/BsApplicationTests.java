package com.baizhi;

import com.baizhi.entity.User;
import com.baizhi.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class BsApplicationTests {
    @Autowired
    UserMapper userMapper;
    @Test
    void contextLoads() {
        List<User> queryall = userMapper.queryall(1, 2);
        for (User user : queryall) {
            System.out.println(user);
        }
    }

}
