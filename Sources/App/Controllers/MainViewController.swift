//
//  MainViewController.swift
//
//
//  Created by Carlos Company on 7/7/24.
//

import Foundation
import Leaf
import Vapor

struct MainViewController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        routes.get("", use: mainView)
    }
    
    @Sendable
    func mainView(req: Request) async throws -> View {
        try await req.view.render(
            "index.leaf",
            [
                "time": "\(Date().formatted(date: .complete, time: .complete))",
                "title": "Vapor rocks!"
            ]
        )
    }
}
