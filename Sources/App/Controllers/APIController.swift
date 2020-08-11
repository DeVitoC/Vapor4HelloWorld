//
//  File.swift
//  
//
//  Created by Christopher Devito on 8/11/20.
//

import Foundation
import Vapor

struct APIController: RouteCollection {

    func boot(routes: RoutesBuilder) throws {
        let api = routes.grouped("api")

        api.get("users", use: getUsers)
    }

    func getUsers(req: Request) throws -> Response {
        let users = [["name":"Alex","age":32], ["name":"Mary","age":56]]
        let data = try JSONSerialization.data(withJSONObject: users, options: .prettyPrinted)

        return Response(status: .ok, body: Response.Body(data: data))
    }
}
