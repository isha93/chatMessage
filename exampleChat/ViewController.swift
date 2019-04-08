//
//  ViewController.swift
//  exampleChat
//
//  Created by isa nur fajar on 08/04/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    fileprivate let cellId = "id"
    let textMessages = [
    "Halo my name is isa",
    "Nice to meet you isa, what your job now",
    "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Pesan"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(chatMessageCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorStyle = .none
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textMessages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! chatMessageCell
        cell.messageLabel.text = textMessages[indexPath.row]
        return cell
    }

}

