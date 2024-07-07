import Vapor

func routes(_ app: Application) throws {
    
    // MARK: /
    try app.register(collection: MainViewController())
    
    // MARK: /api
    try app.register(collection: JSONPlaceholderController())
}
