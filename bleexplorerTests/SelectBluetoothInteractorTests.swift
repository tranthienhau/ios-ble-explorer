//
//  SelectBluetoothInteractor.swift
//  bleexplorerTests
//
//  Created by DatNguyen on 4/15/21.
//

import XCTest
@testable import bleexplorer

class SelectBluetoothInteractorTests: XCTestCase {

    let mockNetworking = MockNetworking()
    let mockPresenter = MockSelectBluetoothPresenter()
    var interactor : InteractorSelectBluetooth!
    
    override func setUpWithError() throws {
        print("Setup")
        interactor = InteractorSelectBluetooth(injectNetworking: mockNetworking)
        interactor.presenter = mockPresenter
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        print("Teardown")
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample2() {
        
        var expectedValue = 0
        
        //Given
        mockNetworking.StubGetListBluetooth = 10
        //When
        interactor?.handleGetDataBluetooth(result: {value in
//            print(value)
            expectedValue = value
        }, error: {_ in
            
        })
        //Then
        XCTAssertTrue(expectedValue == 8)
        
    }
    
    func testExample3() {
        
        var expectedValue = 0
        
        //Given
        mockNetworking.StubGetListBluetooth = 20
        //When
        interactor.handleGetDataBluetooth(result: {value in
            expectedValue = value
        }, error: {_ in
            
        })
        //Then
        XCTAssertTrue(expectedValue == 18)
        
    }
    
    func testExample4() {
        
//        var expectedValue = 0
        var msgError = ""
        
        //Given
        mockNetworking.StubGetListBluetooth = -9
        //When
        interactor.handleGetDataBluetooth { value in
//            expectedValue = value
        } error: { message in
            msgError = message
        }

        //Then
        XCTAssertTrue(msgError == "Error value")
        
    }
    
    func test_networkingReturnNagative_handleGetDataBluetooth_ValueIsNil() {
        var expectedValue : Int?
        //Given
        mockNetworking.StubGetListBluetooth = -9
        //When
        interactor.handleGetDataBluetooth { value in
            expectedValue = value
        } error: { _ in
            
        }
        //Then
        XCTAssertTrue(expectedValue == nil)

    }

}


class MockNetworking: NetWorkingProtocol {
    var StubGetListBluetooth = 0
    func getListBluetooth(result: (Int) -> ()) {
        result(StubGetListBluetooth)
    }
    
}

class MockSelectBluetoothPresenter: PresenterSelectBluetoothProtocol {
    func getDataBluetooth() {
        
    }
}
