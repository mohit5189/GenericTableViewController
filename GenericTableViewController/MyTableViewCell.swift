//
//  MyTableViewCell.swift
//  GenericTableViewController
//
//  Created by Mohit Kumar on 30/07/19.
//  Copyright © 2019 Mohit Kumar. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell, GenericCellProtocol {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(model: MyModel) {
        titleLabel.text = model.title
        subTitleLabel.text = model.subTitle
        iconImageView.image = UIImage(named: model.imageName)
    }
}
