//
//  Constants.swift
//
//
//  Created by Carlos Company on 5/7/24.
//

import Foundation
import Vapor

final class Constants {
    
    // MARK: Directories
    static var mainDirectoryConfiguration: DirectoryConfiguration { DirectoryConfiguration.detect() }
    static var workingDirectory: String { Constants.mainDirectoryConfiguration.workingDirectory }
    static var jsonFakesDirectory: String { "Sources/App/Resources/Fakes/JSON" }
}
