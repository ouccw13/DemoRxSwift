//
//  ResultsModel.swift
//  DemoRXSwift
//
//  Created by Chatchawarn  Udomchutipath on 14/5/2564 BE.
//

import Foundation
import UIKit
struct ResultsModel: Codable {
    let results:[Results]?
    let info:Info?
//    private enum CodingKeys: String, CodingKey {
//        case results
//        case info
//    }
}
struct Results:Codable {
    let gender:String?
    let name:Name?
//    let location:Location?
    let email:String?
    let login:Login?
    let dob:Dob?
    let registered:Registered?
    let phone:String?
    let cell:String?
    let id:Id?
    let picture:Picture?
    let nat:String?
    
}
struct Name:Codable {
    let title:String?
    let first:String?
    let last:String?
}
//struct Location:Codable {
//    let street:Street?
//    let city:String?
//    let state:String?
//    let country:String?
//    let postcode:Int?
//    let coordinates:Coordinates?
//    let timezone:Timezone?
//
//}
struct Street:Codable {
    let number:Int?
    let name:String?
}
struct Coordinates:Codable {
    let latitude:String?
    let longitude:String?
}

struct Timezone {
    let offset:String?
    let description:String?
}

struct Login:Codable {
    let uuid:String?
    let username : String?
    let password:String?
    let salt : String?
    let md5:String?
    let sha1:String?
    let sha256:String?
}
struct Dob:Codable {
    let date:String?
    let age:Int?
}
struct Registered:Codable {
    let date:String?
    let age:String?
}
struct Id:Codable {
    let name:String?
    let value:String?
}
struct Picture:Codable {
    let large:String?
    let medium:String?
    let thumbnail:String?
}
struct Info:Codable {
    let seed:String?
    let results:Int?
    let page:Int?
    let version:String?
}
