//
//  TableCellBluetooth.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

import UIKit

class TableCellBluetooth: UITableViewCell {

    @IBOutlet weak var lbTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - Setup Data
    func setUpData(indexItem: Int) {
        self.lbTitle.text = "Bluetooth \(indexItem + 1)"
    }
    
}
