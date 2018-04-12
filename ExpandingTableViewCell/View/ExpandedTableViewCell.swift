//
//  ExpandedTableViewCell.swift
//  ExpandingTableViewCell
//
//  Created by Francisco Soares on 10/04/18.
//  Copyright © 2018 Francisco Soares. All rights reserved.
//

import UIKit

class ExpandedTableViewCell: TableViewCell {

    @IBOutlet weak var detalhesLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
