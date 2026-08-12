import std.time.DateTime
import std.collection.ArrayList
import std.collection.HashMap

class EmailClient {

    /*
    This is a class that serves as an email client, implementing functions such as checking emails, determining whether there is sufficient space, and cleaning up space
    */

    let addr: String
    let capacity: Int64
    var inbox: ArrayList<HashMap<String, Any>>

    public init(addr: String, capacity: Int64) {
        /*
        Initializes the EmailClient class with the email address and the capacity of the email box.
        :param addr: The email address, String.
        :param capacity: The capacity of the email box, Int64.
        */
        this.addr = addr
        this.capacity = capacity
        this.inbox = ArrayList<HashMap<String, Any>>()
    }

    public func send_to(recv: EmailClient, content: String, size: Int64): Bool {
        /*
        Sends an email to the given email address.
        :param recv: The email address of the receiver, String.
        :param content: The content of the email, String.
        :param size: The size of the email, Int64.
        :return: true if the email is sent successfully, false if the receiver's email box is full.
        >>> sender = EmailClient('sender@example.com', 100)
        >>> receiver = EmailClient('receiver@example.com', 50)
        >>> sender.send_to(receiver, 'Hello', 10)
        true
        >>> receiver.inbox
        {'sender': 'sender@example.com', 'receiver': 'receiver@example.com', 'content': 'Hello', 'size': 10, 'time': '2023-07-13 11:36:40', 'state': 'unread'}

        */
        
    }

    public func fetch(): HashMap<String, Any> {
        /*
        Retrieves the first unread email in the email box and marks it as read.
        :return: The first unread email in the email box, HashMap<String, Any>
        >>> sender = EmailClient('sender@example.com', 100)
        >>> receiver = EmailClient('receiver@example.com', 50)
        >>> receiver.inbox = ArrayList<HashMap<String, Any>>([HashMap<String, Any>([('sender', 'sender@example.com'), ('receiver', 'receiver@example.com'), ('content', 'Hello'), ('size', 10), ('time', '2023-07-13 11:36:40'), ('state', 'unread')])])
        >>> receiver.fetch()
        {'sender': 'sender@example.com', 'receiver': 'receiver@example.com', 'content': 'Hello', 'size': 10, 'time': '2023-07-13 11:36:40', 'state': 'read'}

        */
        
    }

    public func is_full_with_one_more_email(size: Int64): Bool {
        /*
        Determines whether the email box is full after adding an email of the given size.
        :param size: The size of the email, Int64.
        :return: true if the email box is full, false otherwise.
        >>> sender = EmailClient('sender@example.com', 100)
        >>> receiver = EmailClient('receiver@example.com', 50)
        >>> receiver.is_full_with_one_more_email(10)
        false

        */
        
    }

    public func get_occupied_size(): Int64 {
        /*
        Gets the total size of the emails in the email box.
        :return: The total size of the emails in the email box, Int64.
        >>> sender = EmailClient('sender@example.com', 100)
        >>> receiver = EmailClient('receiver@example.com', 50)
        >>> sender.inbox = ArrayList<HashMap<String, Any>>([HashMap<String, Any>([('sender', 'sender@example.com'), ('receiver', 'receiver@example.com'), ('content', 'Hello'), ('size', 10), ('time', DateTime.now()), ('state', 'unread')])])
        >>> sender.get_occupied_size()
        10

        */
        
    }

    public func clear_inbox(size: Int64): Unit {
        /*
        Clears the email box by deleting the oldest emails until the email box has enough space to accommodate the given size.
        :param size: The size of the email, Int64.
        >>> sender = EmailClient('sender@example.com', 100)
        >>> receiver = EmailClient('receiver@example.com', 50)
        >>> receiver.inbox = ArrayList<HashMap<String, Any>>([HashMap<String, Any>([('size', 10)]), HashMap<String, Any>([('size', 20)]), HashMap<String, Any>([('size', 15)])])
        >>> receiver.clear_inbox(30)
        >>> receiver.inbox
        [{'size': 15}]

        */
        
    }
}
