//
//  TableViewCell.swift
//  ExpandingTableViewCell
//
//  Created by Francisco Soares on 10/04/18.
//  Copyright © 2018 Francisco Soares. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nomeLabel : UILabel!
    @IBOutlet weak var horárioLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
