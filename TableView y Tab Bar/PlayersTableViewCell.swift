//
//  PlayersTableViewCell.swift
//  TableView y Tab Bar
//
//  Created by Isaac Mac on 18/10/16.
//  Copyright (c) 2016 Isaac Mac. All rights reserved.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {



    @IBOutlet var img: UIImageView!
    @IBOutlet var lbNombre: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print("ee")
    }

}
