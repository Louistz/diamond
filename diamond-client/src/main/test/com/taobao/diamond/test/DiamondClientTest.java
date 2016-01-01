package com.taobao.diamond.test;

import com.taobao.diamond.manager.DiamondManager;
import com.taobao.diamond.manager.ManagerListener;
import com.taobao.diamond.manager.impl.DefaultDiamondManager;

import java.util.concurrent.Executor;

/**
 * Created by robi on 1/2/16.
 */
public class DiamondClientTest {

    public static void main(String[] args) {
        DiamondManager manager = new DefaultDiamondManager("testgroup", "testdata", new ManagerListener() {
            public Executor getExecutor() {
                return null;
            }

            public void receiveConfigInfo(String configInfo) {
                System.out.println(configInfo);
            }

        });

        System.out.println(manager.getAvailableConfigureInfomation(10));
    }

}
