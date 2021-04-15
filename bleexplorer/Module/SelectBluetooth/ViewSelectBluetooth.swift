//
//  ViewSelectBluetooth.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

import UIKit

protocol ViewSelectBluetoothProtocol: class {
    func showDataListBluetooth(numberItem: Int)
}

class ViewSelectBluetooth: UIViewController {

    var presenter : PresenterSelectBluetoothProtocol?
    
    @IBOutlet weak var vContainTable: UIView!
    @IBOutlet weak var tblListDevice: UITableView!
    
    let refreshControl = UIRefreshControl()
    
    var numberArrayTable = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
    }

    func setupView() {
        vContainTable.roundCorners([.topLeft, .topRight], radius: 10.0)
        tblListDevice.register(UINib(nibName: "TableCellBluetooth", bundle: nil), forCellReuseIdentifier: "TableCellBluetooth")
        
        refreshControl.addTarget(self, action: #selector(refreshData), for: .valueChanged)
        tblListDevice.addSubview(refreshControl)
        
        self.getDataBluetooth()
    }
    
    @objc func refreshData() {
        refreshControl.endRefreshing()
        self.getDataBluetooth()
    }
    
    //MARK: - Get Data
    func getDataBluetooth() {
        guard let injectPresenter = presenter else {return}
        injectPresenter.getDataBluetooth()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ViewSelectBluetooth : ViewSelectBluetoothProtocol {
    func showDataListBluetooth(numberItem: Int) {
        numberArrayTable = numberItem
        self.tblListDevice.reloadData()
    }
}

extension ViewSelectBluetooth : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberArrayTable
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCellBluetooth", for: indexPath) as! TableCellBluetooth
        cell.setUpData(indexItem: indexPath.row)
        return cell
    }
    
    
}
