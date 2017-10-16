//
//  ViewPresenter.swift
//  MVPDemoSwift
//
//  Created by Zzcz on 2017/2/15.
//  Copyright © 2017年 fly. All rights reserved.
//

import UIKit

class ViewPresenter: NSObject, LoginListener {

    let mainView: MainView
    let userLogin: UserLogin
    //构造函数
    init(mainView: MainView) {
        self.mainView = mainView
        self.userLogin = UserLogin()
    }

    //登录事件
    func login() {
        mainView.showProgress()
        userLogin.login(userName: mainView.getUserName(), passWord: mainView.getPassWord(), listener: self)

    }
    //======= LoginListener 协议 ========
    //登录成功 LoginListener
    func failure(errormessage: String) {
        mainView.dismisss()
        UIAlertView.init(title: "登录失败", message: errormessage, delegate: self, cancelButtonTitle: "知道了").show()
    }
    //登录失败 LoginListener
    func sucess(model: UserModel) {
        mainView.dismisss()
        UIAlertView.init(title: "登录成功", message: "你的账号：" + model.username + " 登录成功", delegate: self, cancelButtonTitle: "知道了").show()

    }

    //清空事件
    func clear() {
        mainView.clearUserName()
        mainView.clearPassWord()
    }
}
