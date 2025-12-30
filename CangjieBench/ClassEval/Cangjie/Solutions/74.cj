import std.collection.ArrayList
import std.collection.HashMap

class Server {

    let white_list: ArrayList<Int64>
    let send_struct: HashMap<String, Any>
    let receive_struct: HashMap<String, Any>

    public init() {
        this.white_list = ArrayList<Int64>()
        this.send_struct = HashMap<String, Any>()
        this.receive_struct = HashMap<String, Any>()
    }

    public func add_white_list(addr: Int64): Option<ArrayList<Int64>> {
        if (this.white_list.contains(addr)) {
            return None
        } else {
            this.white_list.add(addr)
            return this.white_list
        }
    }

    public func del_white_list(addr: Int64): Option<ArrayList<Int64>> {
        if (!this.white_list.contains(addr)) {
            return None
        } else {
            this.white_list.removeIf({x: Int64 => x == addr})
            return this.white_list
        }
    }

    public func recv(info: HashMap<String, Any>): Any {
        if (info.size == 0 || !info.contains("addr") || !info.contains("content")) {
            return -1
        }
        let addr = (info["addr"] as Int64) ?? -1
        let content = (info["content"] as String) ?? ""
        if (!this.white_list.contains(addr)) {
            return false
        } else {
            this.receive_struct.clear()
            this.receive_struct.add("addr", addr)
            this.receive_struct.add("content", content)
            return this.receive_struct["content"]
        }
    }

    public func send(info: HashMap<String, Any>): Option<String> {
        if (info.size == 0 || !info.contains("addr") || !info.contains("content")) {
            return "info structure is not correct"
        }
        this.send_struct.clear()
        this.send_struct.add("addr", info["addr"])
        this.send_struct.add("content", info["content"])
        return None
    }

    public func show(type_struct: String): Option<HashMap<String, Any>> {
        if (type_struct == "send") {
            return this.send_struct
        } else if (type_struct == "receive") {
            return this.receive_struct
        } else {
            return None
        }
    }
}

