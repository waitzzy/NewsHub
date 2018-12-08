package com.newshub.common;

public class Const {

    public static final String CURRENT_USER = "currentUser";

    public interface Type{
        String TYPE_ADMIN = "admin";
        String TYPE_USER = "user";
    }

    public interface Table{
        Integer TABLE_COMMENT = 1;
        Integer TABLE_HISTORY = 2;
        Integer TABLE_NEW = 3;
        Integer TABLE_USER = 4;
    }
}
