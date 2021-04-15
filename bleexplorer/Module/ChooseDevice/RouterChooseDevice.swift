//
//  RouterChooseDevice.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/10/21.
//

import UIKit

protocol RouterChooseDeviceProtocol {
    func pushToDetail()
}

class RouterChooseDevice: RouterChooseDeviceProtocol {
    
    weak var viewController : UIViewController?
    
    func pushToDetail() {
        
        let viewSelectBlutooth = SelectBluetoothBuilder.buildModule()
        viewController?.navigationController?.pushViewController(viewSelectBlutooth, animated: true)
        
    }
}
