//
//  File.swift
//  
//
//  Created by Carlos Company on 5/7/24.
//

import Foundation
import Vapor

struct Photo: Content, JSONDemoModelBuilder {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
    
    // JSONDemoModelBuilder
    static let jsonFilenameAndExtension = "photos.json"
}
