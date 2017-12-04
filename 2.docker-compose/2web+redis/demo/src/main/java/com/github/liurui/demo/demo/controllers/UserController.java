package com.github.liurui.demo.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    RedisTemplate redisTemplate;

    @RequestMapping(method = RequestMethod.GET)
    public String get() {
        Long a = redisTemplate.opsForValue().increment("a", 1);
        return "hello " + a;
    }
}
