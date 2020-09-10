//
//  CTMediator+B.swift
//  B_MYL
//
//  Created by yulong mei on 2020/9/10.
//  Copyright © 2020 yulong mei. All rights reserved.
//

import CTMediator

fileprivate let ModuleName = "B_MYL"

public extension CTMediator {
    func B_MYL_demo_1(name:String, callback:@escaping (String)->Void) -> UIViewController? {
        let params:[AnyHashable:Any] = [
            "name": name,
            "callback": callback,
            kCTMediatorParamsKeySwiftTargetModuleName: ModuleName
        ]
        if let viewController = performTarget(ModuleName, action: "demo", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}
