//
//  GenericProtocols.swift
//  GenericTableViewController
//
//  Created by Mohit Kumar on 30/07/19.
//  Copyright © 2019 Mohit Kumar. All rights reserved.
//

import UIKit

protocol GenericCellProtocol {
    associatedtype T
    func configureCell(model: T)
}
