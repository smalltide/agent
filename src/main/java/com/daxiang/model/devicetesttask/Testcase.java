package com.daxiang.model.devicetesttask;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.daxiang.model.action.Action;
import lombok.Data;

import java.util.Date;

/**
 * Created by jiangyitao.
 */
@Data
public class Testcase extends Action {

    public static final Integer FAIL_STATUS = 0;
    public static final Integer PASS_STATUS = 1;
    public static final Integer SKIP_STATUS = 2;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date startTime;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date endTime;
    /**
     * 失败截图
     */
    private String failImgUrl;
    /**
     * 失败信息
     */
    private String failInfo;
    /**
     * 运行视频
     */
    private String videoUrl;
    private Integer status;
}
