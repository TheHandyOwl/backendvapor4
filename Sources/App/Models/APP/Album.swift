//
//  Album.swift
//
//
//  Created by Carlos Company on 5/7/24.
//

import Foundation
import Vapor

struct Album: Content, JSONDemoModelBuilder {
    let userId: Int
    let id: Int
    let title: String
    
    // JSONDemoModelBuilder
    static let jsonFilenameAndExtension = "albums.json"
}
