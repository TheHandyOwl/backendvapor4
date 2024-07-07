//
//  User.swift
//  
//
//  Created by Carlos Company on 5/7/24.
//

import Foundation
import Vapor

struct User: Content, JSONDemoModelBuilder {
    
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone, website: String
    let company: Company
    
    // MARK: - Address
    struct Address: Codable {
        let street, suite, city, zipcode: String
        let geo: Geo
    }
    
    // MARK: - Geo
    struct Geo: Codable {
        let lat: String
        let lng: String
    }
    
    // MARK: - Company
    struct Company: Codable {
        let name: String
        let catchPhrase: String
        let bs: String
    }
    
    // JSONDemoModelBuilder
    static let jsonFilenameAndExtension = "users.json"
}
