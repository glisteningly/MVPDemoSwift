//
//  LoginListener.swift
//  MVPDemoSwift
//
//  Created by Zzcz on 2017/2/15.
//  Copyright © 2017年 fly. All rights reserved.
//

import Foundation

protocol LoginListener : NSObjectProtocol {
    //失败 传参 失败信息
    func failure(errormessage : String) -> ()
    //成功 传参 Model
    func sucess(model : UserModel) -> ()
}