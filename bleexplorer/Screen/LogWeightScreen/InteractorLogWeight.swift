//
//  InteractorLogWeight.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

import Foundation

protocol InteractorLogWeightProtocol {
    func handleSaveData()
}

class InteractorLogWeight: InteractorLogWeightProtocol {
    
    weak var presenter: PresenterLogWeightProtocolForInteractor?
    
    //MARK: - Implement Protocol
    func handleSaveData() {
        guard let injectPresenter = presenter else {
            return
        }
        injectPresenter.handleFinishSaveData(isError: false)
    }
}
