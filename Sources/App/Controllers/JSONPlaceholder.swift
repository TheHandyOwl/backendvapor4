//
//  JSONPlaceholder.swift
//
//
//  Created by Carlos Company on 5/7/24.
//

import Foundation
import Vapor

struct JSONPlaceholder: RouteCollection {
    
    func boot(routes: any RoutesBuilder) throws {
        let jsonplaceholder = routes.grouped("api", "jsonplaceholder")
        
        // /api/jsonplaceholder/albums
        jsonplaceholder.get("albums", use: albums)
        
        // /api/jsonplaceholder/comments
        jsonplaceholder.get("comments", use: comments)
        
        // /api/jsonplaceholder/photos
        jsonplaceholder.get("photos", use: photos)
        
        // /api/jsonplaceholder/posts
        jsonplaceholder.get("posts", use: posts)
        
        // /api/jsonplaceholder/todos
        jsonplaceholder.get("todos", use: todos)
        
        // /api/jsonplaceholder/users
        jsonplaceholder.get("users", use: users)

    }
    
    @Sendable
    func albums(req: Request) throws -> [Album] {
        guard let albums = try? Album.jsonModelArrayDemo(),
              !albums.isEmpty else {
            throw Abort(.badGateway)
        }
        return albums
    }
    
    @Sendable
    func comments(req: Request) throws -> [Comment] {
        guard let comments = try? Comment.jsonModelArrayDemo(),
              !comments.isEmpty else {
            throw Abort(.badGateway)
        }
        return comments
    }
    
    @Sendable
    func photos(req: Request) throws -> [Photo] {
        guard let photos = try? Photo.jsonModelArrayDemo(),
              !photos.isEmpty else {
            throw Abort(.badGateway)
        }
        return photos
    }
    
    @Sendable
    func posts(req: Request) throws -> [Post] {
        guard let posts = try? Post.jsonModelArrayDemo(),
              !posts.isEmpty else {
            throw Abort(.badGateway)
        }
        return posts
    }
    
    @Sendable
    func todos(req: Request) throws -> [ToDo] {
        guard let todos = try? ToDo.jsonModelArrayDemo(),
              !todos.isEmpty else {
            throw Abort(.badGateway)
        }
        return todos
    }
    
    @Sendable
    func users(req: Request) throws -> [User] {
        guard let users = try? User.jsonModelArrayDemo(),
              !users.isEmpty else {
            throw Abort(.badGateway)
        }
        return users
    }
    
}
