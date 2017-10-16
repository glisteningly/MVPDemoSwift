//
//  UserLogin.swift
//  MVPDemoSwift
//
//  Created by Zzcz on 2017/2/15.
//  Copyright © 2017年 fly. All rights reserved.
//

import UIKit

class UserLogin: NSObject {
    //登录 传参 账号 密码 登录结果监听
    func login(userName : String , passWord : String , listener : LoginListener ) -> () {
        //模拟网络请求
        //创建异步线程
        let queue = DispatchQueue(label: "login")
        queue.async {
            //线程阻塞2秒 用于展示加载动画
            sleep(2)
            
            //返回主线程
            
            DispatchQueue.main.async {

                //判读是否登录成功
                if userName == "fei" && passWord == "123" {
                    //登录成功
                    let m = UserModel()
                    m.username = userName
                    m.password = passWord
                    listener.sucess(model: m)
                } else {
                    //登录失败
                    listener.failure(errormessage: "你的账号或是密码错误")
                }
            }
        }
        
    }

}
