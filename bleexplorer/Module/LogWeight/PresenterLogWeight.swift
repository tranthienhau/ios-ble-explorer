//
//  PresenterLogWeight.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

import Foundation

protocol PresenterLogWeightProtocolForView: class {
    func btnSaveAction(data: String?)
}

protocol PresenterLogWeightProtocolForInteractor: class {
    func handleFinishSaveData(isError: Bool)
}


class PresenterLogWeight  {

    weak var view: ViewLogWeightProtocol?
    var router: RouterLogWeightProtocol?
    var interactor: InteractorLogWeightProtocol?
    
}

extension PresenterLogWeight: PresenterLogWeightProtocolForView {
    func btnSaveAction(data: String?) {
        if (data != nil && data != "") {
            guard let injectInteractor = interactor else {
                return
            }
            
            injectInteractor.handleSaveData()
        }else {
            guard let injectView = view else {
                return
            }
            injectView.handleUIInputWeight(isError: true)
        }
    }
}

extension PresenterLogWeight: PresenterLogWeightProtocolForInteractor {
    func handleFinishSaveData(isError: Bool) {
        guard let injectView = view else {
            return
        }
        injectView.handleUIInputWeight(isError: isError)
    }
}
