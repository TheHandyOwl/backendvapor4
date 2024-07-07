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
        let time = Date()
        let dateComponents = Calendar.autoupdatingCurrent.dateComponents([.weekday], from: time)
        let weekend = dateComponents.weekday == 1 || dateComponents.weekday == 7
        return try await req.view.render(
            "index.leaf",
            [
                "time": "\(time.formatted(date: .complete, time: .complete))",
                "weekday": "\(weekend)",
                "title": "Vapor rocks!"
            ]
        )
    }
}
