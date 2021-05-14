//
//  UserViewModel.swift
//  DemoRXSwift
//
//  Created by Chatchawarn  Udomchutipath on 14/5/2564 BE.
//

import Foundation
import RxSwift
import RxCocoa
import UIKit

class UserViewModel {
    let request = APIRequest()
    var results: Observable<[Results]>?
    private let userviewModel = BehaviorRelay<[UserDetailModel]>(value: [])
    var userViewModelObserver:Observable<[UserDetailModel]> {
        return userviewModel.asObservable()
    }
    private let disposeBag = DisposeBag()
    func  fetchDataList()  {
        results = request.callAPI()
        results?.subscribe(onNext: {(value) in
            
        }, onError: {(error) in
        }).disposed(by: disposeBag)
    }
}
