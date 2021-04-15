//
//  Networking.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/15/21.
//

import Foundation


protocol NetWorkingProtocol {
    func getListBluetooth(result: (Int)->())
}

class NetWorking: NetWorkingProtocol {
    
    func getListBluetooth(result: (Int)->()) {
        let randomNumber = Int.random(in: 1..<10)
//        print("Get List Bluetooth")
        result(randomNumber)
    }
    
}
