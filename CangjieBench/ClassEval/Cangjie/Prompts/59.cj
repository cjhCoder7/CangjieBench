import std.collection.ArrayList
import std.collection.HashMap
import std.time.DateTime
import std.math.abs

class MovieBookingSystem {

    /*
    this is a class as movie booking system, which allows to add movies, book tickets and check the available movies within a given time range. 
    */

    let movies: ArrayList<HashMap<String, Any>>

    public init() {
        /*
        Initialize movies contains the information about movies
        >>> system.movies
        [{'name': 'Batman', 'price': 49.9, 'start_time': DateTime.parse("2023/01/01 17:05", "yyyy/MM/dd HH:mm"), 'end_time': DateTime.parse("2023/01/01 19:25", "yyyy/MM/dd HH:mm"),
        'seats': ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0, 0]),
            ArrayList<Int64>([0, 0, 0]),
            ArrayList<Int64>([0, 0, 0])
            ])}]
        */
        movies = ArrayList<HashMap<String, Any>>()
    }

    public func add_movie(name: String, price: Float64, start_time: String, end_time: String, n: Int64): Unit {
        /*
        Add a new movie into this.movies
        :param name: String, movie name
        :param price: Float64, price for one ticket
        :param start_time: String
        :param end_time: String
        :param n: Int64, the size of seats(n*n)
        >>> system.add_movie('Batman', 49.9, '2023/01/01 17:05', '2023/01/01 19:25', 3)
        >>> system.movies
        [{'name': 'Batman', 'price': 49.9, 'start_time': DateTime.parse("2023/01/01 17:05", "yyyy/MM/dd HH:mm"), 'end_time': DateTime.parse("2023/01/01 19:25", "yyyy/MM/dd HH:mm"),
        'seats': ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0, 0]),
            ArrayList<Int64>([0, 0, 0]),
            ArrayList<Int64>([0, 0, 0])
            ])}]
        */
        
    }

    public func book_ticket(name: String, seats_to_book: ArrayList<ArrayList<Int64>>): String {
        /*
        Book tickets for a movie. Change the seats value in this.movies if book successfully.
        :param name: String, movie name
        :param seats_to_book: ArrayList<ArrayList<Int64>>, representing seats to book [[row1, col1], [row2, col2], ...]
        :return: String, booking status message. "Movie not found." for no such movie.
                "Booking success." for successfully booking, or "Booking failed." otherwise
        >>> system.add_movie('Batman', 49.9, '2023/01/01 17:05', '2023/01/01 19:25', 3)
        >>> system.book_ticket('Batman', ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0]), ArrayList<Int64>([0, 1])]))
        'Booking success.'
        >>> system.book_ticket('Batman', ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0])]))
        'Booking failed.'
        >>> system.book_ticket('batman', ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0])]))
        'Movie not found.'
        */
        
    }

    public func available_movies(start_time: String, end_time: String): ArrayList<String> {
        /*
        Get a list of available movies within the specified time range
        :param start_time: String, start time in yyyy/MM/dd HH:mm format
        :param end_time: String, end time in yyyy/MM/dd HH:mm format
        :return: ArrayList<String>, names of available movies
        >>> system.add_movie('Batman', 49.9, '2023/01/01 17:05', '2023/01/01 19:25', 3)
        >>> system.available_movies('2023/01/01 12:00', '2023/01/01 22:00')
        ['Batman']
        */
        
    }
}
