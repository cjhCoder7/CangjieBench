import std.collection.ArrayList
import std.collection.HashMap
import std.time.DateTime
import std.math.abs

class MovieBookingSystem {

    let movies: ArrayList<HashMap<String, Any>>

    public init() {
        movies = ArrayList<HashMap<String, Any>>()
    }

    public func add_movie(name: String, price: Float64, start_time: String, end_time: String, n: Int64): Unit {
        let movie = HashMap<String, Any>()
        movie.add("name", name)
        movie.add("price", price)
        movie.add("start_time", DateTime.parse(start_time, "yyyy/MM/dd HH:mm"))
        movie.add("end_time", DateTime.parse(end_time, "yyyy/MM/dd HH:mm"))
        let seats = ArrayList<ArrayList<Int64>>()
        for (i in 0..n) {
            let row = ArrayList<Int64>()
            for (j in 0..n) {
                row.add(0)
            }
            seats.add(row)
        }
        movie.add("seats", seats)
        this.movies.add(movie)
    }

    public func book_ticket(name: String, seats_to_book: ArrayList<ArrayList<Int64>>): String {
        for (i in 0..this.movies.size) {
            let movie = this.movies[i]
            if (movie["name"] as String == name) {
                for (seat in seats_to_book) {
                    let seats = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
                    if (seats[seat[0]][seat[1]] == 0) {
                        seats[seat[0]][seat[1]] = 1
                        let new_movie = HashMap<String, Any>(movie)
                        new_movie["seats"] = seats
                        this.movies[i] = new_movie
                    } else {
                        return "Booking failed."
                    }
                }
                return "Booking success."
            }
        }
        return "Movie not found."
    }

    public func available_movies(start_time: String, end_time: String): ArrayList<String> {
        let start = DateTime.parse(start_time, "yyyy/MM/dd HH:mm")
        let end = DateTime.parse(end_time, "yyyy/MM/dd HH:mm")

        let available_movies = ArrayList<String>()
        for (movie in this.movies) {
            let movie_start_time = (movie["start_time"] as DateTime) ?? DateTime.now()
            let movie_end_time = (movie["end_time"] as DateTime) ?? DateTime.now()
            if (start <= movie_start_time && movie_end_time <= end) {
                available_movies.add((movie["name"] as String) ?? "")
            }
        }
        return available_movies
    }
}
