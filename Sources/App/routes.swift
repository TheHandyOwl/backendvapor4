import Vapor

func routes(_ app: Application) throws {
    
    // MARK: /
    app.get { req async in
        "Vapor ok!"
    }
    
    // MARK: /api
    try app.register(collection: JSONPlaceholder())
}
