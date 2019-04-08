//
//  chatMessageCell.swift
//  exampleChat
//
//  Created by isa nur fajar on 08/04/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import UIKit

class chatMessageCell: UITableViewCell {
    
    let messageLabel = UILabel()
    let bubbleBackgroundView = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        bubbleBackgroundView.backgroundColor = .yellow
        bubbleBackgroundView.layer.cornerRadius = 5
        bubbleBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bubbleBackgroundView)
        addSubview(messageLabel)
//        messageLabel.backgroundColor = .green
        messageLabel.text = "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"
        messageLabel.numberOfLines = 0
        
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let constraint = [messageLabel.topAnchor.constraint(equalTo: topAnchor, constant : 32),
        messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant : 32),
        messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant : -32),
        messageLabel.widthAnchor.constraint(equalToConstant: 250),
        
        bubbleBackgroundView.topAnchor.constraint(equalTo: messageLabel.topAnchor, constant : -16),
        bubbleBackgroundView.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor, constant : -16),
        bubbleBackgroundView.bottomAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant : 16),
        bubbleBackgroundView.trailingAnchor.constraint(equalTo: messageLabel.trailingAnchor, constant : 16)
        ]

        NSLayoutConstraint.activate(constraint)
        
        messageLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
