//
//  InteractorSelectBluetooth.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

protocol InteractorSelectBluetoothProtocol {
    func handleGetDataBluetooth(result: (Int)->()?, error: (String)->()?)
    func testExample()
}

class InteractorSelectBluetooth: InteractorSelectBluetoothProtocol {

    weak var presenter: PresenterSelectBluetoothProtocol?
    private let networking: NetWorkingProtocol
    
    init(injectNetworking: NetWorkingProtocol) {
        self.networking = injectNetworking
    }
    
    //MARK: - Implement Protocol
    func handleGetDataBluetooth(result: (Int)->()?, error: (String)->()?) {
        networking.getListBluetooth(result: { value in
            if (value < 0) {
                error("Error value")
            }else {
                result(value - 2)
            }
        })
    }
    
    func testExample() {
        print("Test Example")
    }
}
