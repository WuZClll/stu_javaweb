package com.util;

public class MyTools {
    public static String change(String source) {
        //防止html注入
        source = source.replace("<", "&lt;");
        source = source.replace(">", "&gt;");
        return source;
    }

    //字符串转整形 为空或null转换为0
    public static int strToInt(String str) {
        if (str == null || str.equals("")) {
            str = "0";
        }
        int i = 0;
        i = Integer.parseInt(str);
        return i;
    }
}
