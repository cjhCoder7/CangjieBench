import std.collection.HashMap
import std.collection.ArrayList
import std.time.DateTime

class Message <: Equatable<Message> {

    let sender: String
    let receiver: String
    let message: String
    let timestamp: String

    public init(sender: String, receiver: String, message: String, timestamp: String) {
        this.sender = sender
        this.receiver = receiver
        this.message = message
        this.timestamp = timestamp
    }

    public override operator func != (that: Message): Bool {
        return this.sender != that.sender || this.receiver != that.receiver || this.message != that.message || this.timestamp != that.timestamp
    }

    public override operator func == (that: Message): Bool {
        return this.sender == that.sender && this.receiver == that.receiver && this.message == that.message && this.timestamp == that.timestamp
    }
}

class Chat {

    let users: HashMap<String, ArrayList<Message>>

    public init() {
        this.users = HashMap<String, ArrayList<Message>>()
    }

    public func add_user(username: String): Bool {
        if (this.users.contains(username)) {
            return false
        } else {
            this.users.add(username, ArrayList<Message>())
            return true
        }
    }

    public func remove_user(username: String): Bool {
        if (this.users.contains(username)) {
            this.users.remove(username)
            return true
        } else {
            return false
        }
    }

    public func send_message(sender: String, receiver: String, message: String): Bool {
        if (!this.users.contains(sender) || !this.users.contains(receiver)) {
            return false
        }

        let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
        let message_info = Message(sender, receiver, message, timestamp)
        this.users[sender].add(message_info)
        this.users[receiver].add(message_info)
        return true
    }

    public func get_messages(username: String): ArrayList<Message> {
        if (!this.users.contains(username)) {
            return ArrayList<Message>()
        }
        return this.users[username]
    }
}
