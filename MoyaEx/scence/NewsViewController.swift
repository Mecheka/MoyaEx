//
//  NewsViewController.swift
//  MoyaEx
//
//  Created by Suriya on 6/2/2562 BE.
//  Copyright © 2562 Suriya. All rights reserved.
//

import UIKit
import RxSwift

class NewsViewController: UIViewController {
    var newsResponce: NewsResponce?
    var units: String?
    private let viewModel = NewsViewModel()
    private let disposeBag = DisposeBag()

    @IBOutlet weak var newsTableVIew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.getNews()
        
        subscriptViewModel()
        // Do any additional setup after loading the view.
    }
    
    func subscriptViewModel(){
        
        viewModel.newsReplay.asObservable().bind(to: newsTableVIew.rx.items) {
            tableView, row, item in
            let indexPath = IndexPath(row: row, section: 0)
            let row: NewsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCellIdentifier", for: indexPath) as! NewsTableViewCell
            row.setData(data: item)
            return row
        }.disposed(by: disposeBag)
    }
}
