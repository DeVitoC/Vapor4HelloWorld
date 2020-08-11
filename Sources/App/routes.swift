import Vapor

func routes(_ app: Application) throws {

    // http://127.0.0.1:8080
    app.get { req in
        return "ROOT"
    }

    // http://127.0.0.1:8080/hello
    app.get("hello") { req in
        return "Hello"
    }

    // http://127.0.0.1:8080/movies/year/youryear/genreyourgenrehere
    app.get("movies", "year", ":year", "genre", ":genre") { req -> String in
        guard let genre = req.parameters.get("genre"), let year = req.parameters.get("year") else {
            throw Abort(.badRequest)
        }

        return "The genre was \(genre) and the year was \(year)"
    }

    // http://127.0.0.1:8080/movies/genre/yourgenrehere
    app.get("movies", "genre", ":name") { req -> String in
        guard let name = req.parameters.get("name") else {
            throw Abort(.badRequest)
        }

        return "The Genre was \(name)"
    }

    /*
    // http://127.0.0.1:8080/movies/genre/fiction
    app.get("movies", "genre", "fiction") { req in
        return "/movies/genre/fiction"
    }

    // http://127.0.0.1:8080/movies/genre/comedy
    app.get("movies", "genre", "comedy") { req in
        return "/movies/genre/fiction"
    }
 */

}
