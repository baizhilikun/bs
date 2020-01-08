package com.baizhi.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Accessors
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Admin {
private String id;
private String username;
private String password;
}
