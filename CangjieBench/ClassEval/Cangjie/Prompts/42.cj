import std.collection.HashMap

class Hotel {

    /*
    This is a class as hotel management system, managing the booking, check-in, check-out, and availability of rooms in a hotel with different room types.
    */

    let name: String
    let available_rooms: HashMap<String, Int64>
    var booked_rooms: HashMap<String, HashMap<String, Int64>>

    public init(name: String, rooms: HashMap<String, Int64>) {
        /*
        Initialize the three fields in Hotel System.
        name is the hotel name.
        available_rooms stores the remaining rooms in the hotel
        booked_rooms stores the rooms that have been booked and the person's name who booked rooms.
        >>> hotel.name
        'peace hotel'
        >>> hotel.available_rooms
        available_rooms = {'single': 5, 'double': 3}
        >>> hotel.booked_rooms
        {'single': {'guest 1': 2, 'guest 2':1}, 'double': {'guest1': 1}}
        */
        this.name = name
        this.available_rooms = HashMap<String, Int64>(rooms)
        this.booked_rooms = HashMap<String, HashMap<String, Int64>>()
    }

    public func book_room(room_type: String, room_number: Int64, name: String): String {
        /*
        Check if there are any rooms of the specified type available.
        if rooms are adequate, modify available_rooms and booked_rooms and finish booking, or fail to book otherwise.
        :param room_type: String
        :param room_number: Int64, the expected number of specified type rooms to be booked
        :param name: String, guest name
        :return: if number of rooms about to be booked doesn't exceed the remaining rooms, return str 'Success!'
                if exceeds but quantity of available rooms is not equal to zero, return Int64.toString() (the remaining quantity of this room type).
                if exceeds and quantity is zero or the room_type isn't in available_room, return 'false'.
        >>> hotel = Hotel('peace hotel', HashMap<String, Int64>([('single', 5), ('double', 3)]))
        >>> hotel.book_room('single', 1, 'guest 1')
        'Success!'
        >>> hotel.book_room('single', 5, 'guest 1')
        '4'
        >>> hotel.book_room('single', 4, 'guest 1')
        'Success!'
        >>> hotel.book_room('single', 1, 'guest 1')
        'false'
        >>> hotel.book_room('triple', 1, 'guest 1')
        'false'
        */
        
    }

    public func check_in(room_type: String, room_number: Int64, name: String): Bool {
        /*
        Check if the room of the specified type and number is booked by the person named name.
        Remove this name when check in successfuly(room_number is equal to specific person's booked_rooms. When the actual check in quantity (room_number) is less than the booked quantity, number in booked_rooms will be booked quantity minus actual quantity
        :param room_type: String, check in room type
        :param room_number: Int64, check in room number
        :param name: String, person name
        :return false: only if the room_type is not in the booked_rooms or room_number is higher than quantity in booked rooms.
        >>> hotel = Hotel('peace hotel', HashMap<String, Int64>([('single', 5), ('double', 3)]))
        >>> hotel.book_room('single', 1, 'guest 1')
        true
        >>> hotel.check_in('single', 2, 'guest 1')
        false
        >>> hotel.check_in('single', 1, 'guest 1')
        true
        >>> hotel.booked_rooms
        {'single': {}}
        */
        
    }

    public func check_out(room_type: String, room_number: Int64): Unit {
        /*
        Check out rooms, add number for specific type in available_rooms.
        If room_type is new, add new type in available_rooms.
        :param room_type: String, check out room type
        :param room_number: Int64, check out room number
        >>> hotel = Hotel('peace hotel', HashMap<String, Int64>([('single', 5), ('double', 3)]))
        >>> hotel.check_out('single', 2)
        >>> hotel.available_rooms
        {'single': 7, 'double': 3}
        >>> hotel.check_out('triple', 2)
        >>> hotel.available_rooms
        {'single': 7, 'double': 3, 'triple': 2}
        */
        
    }

    public func get_available_rooms(room_type: String): Int64 {
        /*
        Get the number of specific type of available rooms.
        :param room_type: String, the room type that want to know
        :return: Int64, the remaining number of this type rooms.
        >>> hotel = Hotel('peace hotel', HashMap<String, Int64>([('single', 5), ('double', 3)]))
        >>> hotel.get_available_rooms('single')
        5
        */
        
    }
}
