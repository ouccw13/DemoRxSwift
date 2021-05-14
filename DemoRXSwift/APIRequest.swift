//
//  APIRequest.swift
//  DemoRXSwift
//
//  Created by Chatchawarn  Udomchutipath on 14/5/2564 BE.
//
import RxCocoa
import RxSwift
import Foundation
class APIRequest {
    let urlBase = URL(string: "https://randomuser.me/api/?results=10")!
    let session = URLSession(configuration: .default)
    var dataTask : URLSessionDataTask? = nil
    func callAPI<T: Codable>() -> Observable<T> {
        return Observable<T>.create { observer in
            self.dataTask = self.session.dataTask(with: self.urlBase, completionHandler: {(data, response,error) in
                do{
                    let model : ResultsModel = try JSONDecoder().decode(ResultsModel.self, from: data ?? Data())
                    observer.onNext(model.results as! T)
                }catch let error {
                    observer.onError(error)
                }
                observer.onCompleted()
            })
            self.dataTask?.resume()
            return Disposables.create { 
                self.dataTask?.cancel()
            }
        }
    }
}
