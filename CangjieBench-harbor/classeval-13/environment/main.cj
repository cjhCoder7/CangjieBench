import std.collection.HashMap

class BookManagement {

    /*
    This is a class as managing books system, which supports to add and remove books from the inventory dict, view the inventory, and check the quantity of a specific book.
    */

    let inventory: HashMap<String, Int64>

    public init() {
        /*
        Initialize the inventory of Book Manager.
        */
        this.inventory = HashMap<String, Int64>()
    }

    public func add_book(title: String, quantity!: Int64=1): Unit {
        /*
        Add one or several books to inventory which is sorted by book title.
        :param title: String, the book title
        :param quantity: Int64, default value is 1.
        */
        
    }

    public func remove_book(title: String, quantity: Int64): Unit {
        /*
        Remove one or several books from inventory which is sorted by book title.
        throw Exception("Invalid operation") while get invalid input.
        :param title: String, the book title
        :param quantity: Int64
        */
        
    }

    public func view_inventory(): HashMap<String, Int64> {
        /*
        Get the inventory of the Book Management.
        :return this.inventory: HashMap<String, Int64>
        >>> bookManagement = BookManagement()
        >>> bookManagement.add_book("book1", quantity: 1)
        >>> bookManagement.add_book("book2", quantity: 1)
        >>> bookManagement.view_inventory()
        {'book1': 1, 'book2': 1}
        */
        
    }

    public func view_book_quantity(title: String): Int64 {
        /*
        Get the quantity of a book.
        :param title: String, the title of the book.
        :return quantity: the quantity of this book title. return 0 when the title does not exist in this.inventory
        >>> bookManagement = BookManagement()
        >>> bookManagement.add_book("book1", quantity: 1)
        >>> bookManagement.view_book_quantity("book3")
        0
        */
        
    }
}
