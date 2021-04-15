//
//  InteractorSelectBluetooth.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

protocol InteractorSelectBluetoothProtocol {
    func handleGetDataBluetooth(result: (Int)->(), error: (Bool)->())
}

class InteractorSelectBluetooth: InteractorSelectBluetoothProtocol {

    weak var presenter: PresenterSelectBluetoothProtocol?
    
    //MARK: - Implement Protocol
    func handleGetDataBluetooth(result: (Int)->(), error: (Bool)->()) {
        let randomNumber = Int.random(in: 1..<10)
        
        result(randomNumber)
        error(false)
    }
}
