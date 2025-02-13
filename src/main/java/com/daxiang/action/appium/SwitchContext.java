package com.daxiang.action.appium;

import com.daxiang.core.MobileDevice;
import io.appium.java_client.AppiumDriver;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.Assert;

import java.util.Set;

/**
 * Created by jiangyitao.
 */
@Slf4j
public class SwitchContext {

    private AppiumDriver appiumDriver;

    public SwitchContext(AppiumDriver appiumDriver) {
        this.appiumDriver = appiumDriver;
    }

    public void excute(Object context) {
        Assert.notNull(context, "context不能为空");
        String _context = (String) context;

        if (MobileDevice.NATIVE_CONTEXT.equals(_context)) {
            // 切换到原生
            appiumDriver.context(_context);
        } else {
            Set<String> contexts = appiumDriver.getContextHandles();
            log.info("contexts: {}", contexts);
            for (String ctx : contexts) {
                // webview 目前先这样处理，如果有多个webview可能会切换错
                if (!MobileDevice.NATIVE_CONTEXT.equals(ctx)) {
                    appiumDriver.context(ctx);
                    break;
                }
            }
            String curCtx = appiumDriver.getContext();
            if (MobileDevice.NATIVE_CONTEXT.equals(curCtx)) {
                throw new RuntimeException("未检测到webview，无法切换，当前contexts: " + contexts.toString());
            }
        }
    }
}
