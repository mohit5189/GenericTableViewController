//
//  GenericTableViewController.swift
//  GenericTableViewController
//
//  Created by Mohit Kumar on 30/07/19.
//  Copyright © 2019 Mohit Kumar. All rights reserved.
//

import UIKit

class GenericTableViewController<T, Cell: UITableViewCell & GenericCellProtocol >: UITableViewController where Cell.T == T {

    var data: [T]!
    var didSelect: (T) -> () = { _ in }

    init(data: [T]) {
        self.data = data
        super.init(style: .plain)
        tableView.register(UINib(nibName: String(describing: Cell.self), bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell
        cell.configureCell(model: data[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didSelect(data[indexPath.row])
    }
}
