//
//  MyTableViewCell2.swift
//  GenericTableViewController
//
//  Created by Mohit Kumar on 31/07/19.
//  Copyright © 2019 Mohit Kumar. All rights reserved.
//

import UIKit

class MyTableViewCell2: UITableViewCell, GenericCellProtocol {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(model: MyModel) {
        iconImageView.image = UIImage(named: model.imageName)
        titleLabel.text = model.title
    }
}
