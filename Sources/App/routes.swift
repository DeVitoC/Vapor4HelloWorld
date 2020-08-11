import Vapor

func routes(_ app: Application) throws {
    try app.register(collection: UserController())
    try app.register(collection: APIController())

//    // QUERY String
//    // /search?keyword=toys&page=12
//
//    app.get("search") { req -> String in
//
//        guard let keyword = req.query["keyword"] as String?,
//            let page = req.query["page"] as Int? else {
//                throw Abort(.badRequest)
//        }
//
//        return "Keyword = \(keyword) and page = \(page)"
//    }
//
//    // http://127.0.0.1:8080
//    app.get { req in
//        return "ROOT"
//    }
//
//    // http://127.0.0.1:8080/hello
//    app.get("hello") { req in
//        return "Hello"
//    }
//
//    // http://127.0.0.1:8080/movies/year/youryear/genreyourgenrehere
//    app.get("movies", "year", ":year", "genre", ":genre") { req -> String in
//        guard let genre = req.parameters.get("genre"), let year = req.parameters.get("year") else {
//            throw Abort(.badRequest)
//        }
//
//        return "The genre was \(genre) and the year was \(year)"
//    }
//
//    // http://127.0.0.1:8080/movies/genre/yourgenrehere
//    app.get("movies", "genre", ":name") { req -> String in
//        guard let name = req.parameters.get("name") else {
//            throw Abort(.badRequest)
//        }
//
//        return "The Genre was \(name)"
//    }
//
//    // anything routes
//    // foo/bar/baz
//    // foo/xyz/baz
//    // foo/qwe/baz
//    app.get("foo", "*", "baz") { req -> String in
//        return "Foo somnething baz"
//    }
//
//    // catchall routes
//    // foo/bar
//    // foo/bar/baz
//    app.get("foo", "**") { req in
//        return "Foo catchall"
//    }
//
//    // ROUTE GROUPS
//    // /users/12
//    // /users
//    // POST /users
//    let users = app.grouped("users")
//
//    // /users
//    users.get { req in
//        return "/users"
//    }
//
//    // users/userID
//    users.get(":userID") { req -> String in
//        guard let userID = req.parameters.get("userID") else {
//            throw Abort(.badRequest)
//        }
//
//        return "userID = \(userID)"
//    }
//
//    // POST /users
//    users.post { req in
//        return "POST"
//    }

}
