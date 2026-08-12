import std.collection.ArrayList
import std.collection.HashMap

class Server {

    /*
    This is a class as a server, which handles a white list, message sending and receiving, and information display.
    */

    let white_list: ArrayList<Int64>
    let send_struct: HashMap<String, Any>
    let receive_struct: HashMap<String, Any>

    public init() {
        /*
        Initialize the whitelist as an empty list, and initialize the sending and receiving information as an empty map.
        */
        this.white_list = ArrayList<Int64>()
        this.send_struct = HashMap<String, Any>()
        this.receive_struct = HashMap<String, Any>()
    }

    public func add_white_list(addr: Int64): Option<ArrayList<Int64>> {
        /*
        Add an address to the whitelist and do nothing if it already exists
        :param addr: Int64, address to be added
        :return: new whitelist, return None if the address already exists
        >>> server = Server()
        >>> server.add_white_list(88)
        [88]
        */
        
    }

    public func del_white_list(addr: Int64): Option<ArrayList<Int64>> {
        /*
        Remove an address from the whitelist and do nothing if it does not exist
        :param addr: Int64, address to be deleted
        :return: new whitelist, return None if the address does not exist
        >>> server.add_white_list(88)
        >>> server.del_white_list(88)
        []
        */
        
    }

    public func recv(info: HashMap<String, Any>): Any {
        /*
        Receive information containing address and content. If the address is on the whitelist, receive the content; otherwise, do not receive it
        :param info: HashMap<String, Any>, information dictionary containing address and content
        :return: if successfully received, return the content of the information; otherwise, return false
        >>> server.recv(HashMap<String, Any>([("addr",88),("content","abc")]))
        abc
        */
        
    }

    public func send(info: HashMap<String, Any>): Option<String> {
        /*
        Send information containing address and content
        :param info: HashMap<String, Any>, information dictionary containing address and content
        :return: if successfully sent, return None; otherwise, return "info structure is not correct"
        >>> server.send(HashMap<String, Any>([("addr",66),("content","ABC")]))
        None
        this.send_struct = HashMap<String, Any>([("addr",66),("content","ABC")])
        */
        
    }

    public func show(type_struct: String): Option<HashMap<String, Any>> {
        /*
        Returns struct of the specified type
        :param type: String, the type of struct to be returned, which can be 'send' or 'receive'
        :return: if type is equal to 'send' or 'receive', return the corresponding struct; otherwise, return None
        >>> server.recv(HashMap<String, Any>([("addr",88),("content","abc")]))
        >>> server.send(HashMap<String, Any>([("addr",66),("content","ABC")]))
        >>> server.show("send")
        {"addr":66,"content":"ABC"}
        */
        
    }
}

