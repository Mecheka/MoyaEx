//
//  NewsTableViewCell.swift
//  MoyaEx
//
//  Created by Suriya on 6/2/2562 BE.
//  Copyright © 2562 Suriya. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    static let identifier = "NewsTableViewCellIdentifier"
    
    @IBOutlet weak var newsTitleLable: UILabel!

    func setData(data: Sources) {
        newsTitleLable.text = data.name
    }
}
