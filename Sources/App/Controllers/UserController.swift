//
//  File.swift
//  
//
//  Created by Christopher Devito on 8/11/20.
//

import Foundation
import Vapor

struct UserController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        // /users Group
        let users = routes.grouped("users")

        // /users GET
        users.get(use: index)

        // /users POST
        users.post(use: create)

        // /users/userID
        users.group(":userID") { user in
            user.get(use: show)
        }
    }

    func index(req: Request) throws -> String {
        return "Index"
    }

    func create(req: Request) throws -> String {
        return "Create"
    }

    func show(req: Request) throws -> String {
        guard let userID = req.parameters.get("userID") as String? else {
            throw Abort(.badRequest)
        }

        return "\(userID)"
    }
}
