//
//  JSONDemoModelBuilder.swift
//
//
//  Created by Carlos Company on 5/7/24.
//

import Foundation
import Vapor

protocol JSONDemoModelBuilder {
    static var jsonFilenameAndExtension: String { get }
    static func jsonModelDemo() throws -> Self?
    static func jsonModelArrayDemo() throws -> [Self]
}

extension JSONDemoModelBuilder where Self: Content {
    
    static func jsonModelDemo() throws -> Self? {
        try Self.jsonModelArrayDemo().first
    }
    
    static func jsonModelArrayDemo() throws -> [Self] {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: Constants.workingDirectory)
                .appendingPathComponent(Constants.jsonFakesDirectory, isDirectory: true)
                .appendingPathComponent(Self.jsonFilenameAndExtension, isDirectory: false))
            return try JSONDecoder().decode([Self].self, from: data)
        } catch {
            print("Error decoding JSON: \(error)")
            throw Abort(.serviceUnavailable)
        }
    }
}
