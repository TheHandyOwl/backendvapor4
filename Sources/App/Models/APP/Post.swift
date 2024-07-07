//
//  Post.swift
//  
//
//  Created by Carlos Company on 5/7/24.
//

import Foundation
import Vapor

struct Post: Content, JSONDemoModelBuilder {
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    // JSONDemoModelBuilder
    static let jsonFilenameAndExtension = "posts.json"
}
