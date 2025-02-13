package com.daxiang.model.action;

import lombok.Data;


/**
 * Created by jiangyitao.
 */
@Data
public class LocalVar {
    /**
     * 被引用时的前缀
     */
    public static final String QUOTE_PREFIX = "@{";
    /**
     * 被引用时的后缀
     */
    public static final String QUOTE_SUFFIX = "}";
    /**
     * 转换为代码时，为了防止和方法参数、全局变量冲突，在name前加的前缀
     */
    public static final String NAME_PREFIX = "l_";

    private String name;
    private String value;
}
