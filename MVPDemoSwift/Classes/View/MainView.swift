//
//  MainView.swift
//  MVPDemoSwift
//
//  Created by Zzcz on 2017/2/15.
//  Copyright © 2017年 fly. All rights reserved.
//

import Foundation

public protocol MainView: NSObjectProtocol {
    //加载动画
    func showProgress()
    //隐藏加载动画
    func dismisss()
    //获取账号
    func getUserName() -> String
    //获取密码
    func getPassWord() -> String
    //清空账号
    func clearUserName()
    //清空密码
    func clearPassWord()
}
