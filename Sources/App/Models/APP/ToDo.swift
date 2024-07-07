//
//  ToDo.swift
//
//
//  Created by Carlos Company on 5/7/24.
//

import Foundation
import Vapor

struct ToDo: Content, JSONDemoModelBuilder {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
    
    // JSONDemoModelBuilder
    static let jsonFilenameAndExtension = "todos.json"
}
