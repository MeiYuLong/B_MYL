//
//  BPage_Extension.swift
//
//  Created by casa on 2020/2/21.
//  Copyright © 2020 casa. All rights reserved.
//

import CTMediator

fileprivate let ModuleName = "B_MYL"

public extension CTMediator {
    func B_MYL_demo(name:String, callback:@escaping (String)->Void) -> UIViewController? {
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
