//
//  NewsViewModel.swift
//  MoyaEx
//
//  Created by Suriya on 6/2/2562 BE.
//  Copyright © 2562 Suriya. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class NewsViewModel {
    let repo = NewsRepository()
    let disposeBag = DisposeBag()
    let newSubject = PublishSubject<String?>()
    let newsReplay = BehaviorRelay<[Sources]>(value: [])
    
    func getNews() {
        newsReplay.accept([])
        repo.getNews().subscribe(onSuccess: {[weak self] (responce) in
            self?.newsReplay.accept(responce.sources!)
            if responce.status == "ok"{
                self?.newsReplay.accept(responce.sources!)
                self?.newSubject.onNext(nil)
            }else{
                self?.newSubject.onNext("Error")
            }
            }).disposed(by: disposeBag)
    }
}
