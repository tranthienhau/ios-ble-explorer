//
//  RouterChooseDevice.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/10/21.
//

import Foundation

protocol RouterChooseDeviceProtocol {
    func pushToDetail(from view: ViewChooseDeviceProtocol)
}

class RouterChooseDevice: RouterChooseDeviceProtocol {
    func pushToDetail(from view: ViewChooseDeviceProtocol) {
        let view = view as! ViewChooseDevice
        
        let viewSelectBlutooth = ViewSelectBluetooth(nibName: "ViewSelectBluetooth", bundle: nil)
        SelectBluetoothBuilder.buildModule(arroundView: viewSelectBlutooth)
        view.navigationController?.pushViewController(viewSelectBlutooth, animated: true)
        
    }
}
