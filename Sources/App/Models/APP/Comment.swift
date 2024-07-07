//
//  Comment.swift
//
//
//  Created by Carlos Company on 5/7/24.
//

import Foundation
import Vapor

struct Comment: Content, JSONDemoModelBuilder {
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
    
    // JSONDemoModelBuilder
    static let jsonFilenameAndExtension = "comments.json"
}
