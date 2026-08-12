import std.collection.HashMap
import std.collection.ArrayList
import std.time.DateTime

class Message <: Equatable<Message> {

    /*
    This is a Message class representing a message in a chat system.
    It contains information about the sender, receiver, message content, and timestamp.
    */

    let sender: String
    let receiver: String
    let message: String
    let timestamp: String

    public init(sender: String, receiver: String, message: String, timestamp: String) {
        /*
        Initialize a Message object with sender, receiver, message content, and timestamp.
        :param sender: The username of the sender, String.
        :param receiver: The username of the receiver, String.
        :param message: The content of the message, String.
        :param timestamp: The time when the message was sent, String.
        >>> let msg = Message("John", "Mary", "Hello", "2023-01-01 00:00:00")
        >>> msg.sender
        "John"
        >>> msg.receiver
        "Mary"
        >>> msg.message
        "Hello"
        >>> msg.timestamp
        "2023-01-01 00:00:00"
        */
        this.sender = sender
        this.receiver = receiver
        this.message = message
        this.timestamp = timestamp
    }

    public override operator func != (that: Message): Bool {
        /*
        Check if two Message objects are not equal.
        Two messages are considered not equal if any of their sender, receiver, message, or timestamp differ.
        :param that: Another Message object to compare with.
        :return: True if the messages are not equal, False otherwise.
        >>> let msg1 = Message("John", "Mary", "Hello", "2023-01-01 00:00:00")
        >>> let msg2 = Message("John", "Mary", "Hi", "2023-01-01 00:00:00")
        >>> msg1 != msg2
        true
        */
        return this.sender != that.sender || this.receiver != that.receiver || this.message != that.message || this.timestamp != that.timestamp
    }

    public override operator func == (that: Message): Bool {
        /*
        Check if two Message objects are equal.
        Two messages are considered equal if their sender, receiver, message, and timestamp are all the same.
        :param that: Another Message object to compare with.
        :return: True if the messages are equal, False otherwise.
        >>> let msg1 = Message("John", "Mary", "Hello", "2023-01-01 00:00:00")
        >>> let msg2 = Message("John", "Mary", "Hello", "2023-01-01 00:00:00")
        >>> let msg3 = Message("Mary", "John", "Hello", "2023-01-01 00:00:00")
        >>> msg1 == msg2
        true
        >>> msg1 == msg3
        false
        */
        return this.sender == that.sender && this.receiver == that.receiver && this.message == that.message && this.timestamp == that.timestamp
    }
}

class Chat {

    /*
    This is a chat class with the functions of adding users, removing users, sending messages, and obtaining messages.
    */

    let users: HashMap<String, ArrayList<Message>>

    public init() {
        /*
        Initialize the Chat with an attribute users, which is an empty dictionary.
        */
        this.users = HashMap<String, ArrayList<Message>>()
    }

    public func add_user(username: String): Bool {
        /*
        Add a new user to the Chat.
        :param username: The user's name, String.
        :return: If the user is already in the Chat, returns false, otherwise, returns true.
        >>> chat = Chat()
        >>> chat.add_user('John')
        true
        this.users = {'John': []}
        >>> chat.add_user('John')
        false

        */
        
    }

    public func remove_user(username: String): Bool {
        /*
        Remove a user from the Chat.
        :param username: The user's name, String.
        :return: If the user is already in the Chat, returns true, otherwise, returns false.
        >>> chat = Chat()
        >>> chat.users = {'John': []}
        >>> chat.remove_user('John')
        true
        >>> chat.remove_user('John')
        false

        */
        
    }

    public func send_message(sender: String, receiver: String, message: String): Bool {
        /*
        Send a message from a user to another user.
        :param sender: The sender's name, String.
        :param receiver: The receiver's name, String.
        :param message: The message, String.
        :return: If the sender or the receiver is not in the Chat, returns false, otherwise, returns true.
        >>> chat = Chat()
        >>> chat.users = {'John': [], 'Mary': []}
        >>> chat.send_message('John', 'Mary', 'Hello')
        true
        >>> chat.send_message('John', 'Tom', 'Hello')
        false

        */
        
    }

    public func get_messages(username: String): ArrayList<Message> {
        /*
        Get all the messages of a user from the Chat.
        :param username: The user's name, String.
        :return: A list of messages, each message is a Message object.
        >>> chat = Chat()
        >>> chat.users = {'John': ArrayList<Message>([Message('John', 'Mary', 'Hello', '2023-01-01 00:00:00')]), 'Mary': []}
        >>> chat.get_messages('John')
        ArrayList<Message>([Message('John', 'Mary', 'Hello', '2023-01-01 00:00:00')])
        >>> chat.get_messages('Mary')
        []

        */

    }
}
