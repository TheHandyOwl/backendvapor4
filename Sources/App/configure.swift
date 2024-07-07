import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // MARK: /Public folder
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    
    // MARK: register routes
    try routes(app)
    
    // MARK: Custom port
    let defaultPort = 8080
    let envPort = Environment.get("PORT")
    app.http.server.configuration.port = Int(envPort ?? "\(defaultPort)" ) ?? defaultPort
}
