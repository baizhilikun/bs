package com.baizhi.service;

import com.baizhi.entity.User;
import com.baizhi.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
@Transactional
public class UserServicelmpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Map<String ,Object> queryall(Integer page,Integer row) {

        Integer start=(page-1)*row;

        Integer getcount = userMapper.getcount();

        Integer total=getcount%row==0?getcount/row:getcount/row+1;

        List<User> queryall = userMapper.queryall(start,row);
        HashMap<String, Object> map = new HashMap<>();
        map.put("rows",queryall);
        map.put("total",total);
        map.put("records",getcount);
        map.put("page",page);


        return map;

    }

    @Override
    public void deletebyid(String id) {
        userMapper.deletebyid(id);
    }

    @Override
    public void update(User user) {
        userMapper.updatebyid(user);
    }

    @Override
    public void insert(User user) {
        user.setId(UUID.randomUUID().toString());
        userMapper.insert(user);
    }

    @Override
    public Integer getcount() {
        Integer getcount = userMapper.getcount();
        return getcount;
    }
}
