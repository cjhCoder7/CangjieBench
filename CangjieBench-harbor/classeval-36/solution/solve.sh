#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.time.DateTime
import std.collection.ArrayList
import std.collection.HashMap

class EmailClient {

    let addr: String
    let capacity: Int64
    var inbox: ArrayList<HashMap<String, Any>>

    public init(addr: String, capacity: Int64) {
        this.addr = addr
        this.capacity = capacity
        this.inbox = ArrayList<HashMap<String, Any>>()
    }

    public func send_to(recv: EmailClient, content: String, size: Int64): Bool {
        if (!recv.is_full_with_one_more_email(size)) {
            let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
            let email = HashMap<String, Any>()
            email.add("sender", this.addr)
            email.add("receiver", recv.addr)
            email.add("content", content)
            email.add("size", size)
            email.add("time", timestamp)
            email.add("state", "unread")
            recv.inbox.add(email)
            return true
        } else {
            this.clear_inbox(size)
            return false
        }
    }

    public func fetch(): HashMap<String, Any> {
        if (this.inbox.size == 0) {
            return HashMap<String, Any>()
        }
        for (i in 0..this.inbox.size) {
            if (this.inbox[i]['state'] as String == "unread") {
                this.inbox[i]['state'] = "read"
                return this.inbox[i]
            }
        }
        return HashMap<String, Any>()
    }

    public func is_full_with_one_more_email(size: Int64): Bool {
        let occupied_size = this.get_occupied_size()
        return if (occupied_size + size > this.capacity) {
            true
        } else {
            false
        }
    }

    public func get_occupied_size(): Int64 {
        var occupied_size = 0
        for (email in this.inbox) {
            occupied_size += (email["size"] as Int64) ?? 0
        }
        return occupied_size
    }

    public func clear_inbox(size: Int64): Unit {
        if (this.addr.size == 0) {
            return
        }
        var freed_space = 0
        while (freed_space < size && this.inbox.size > 0) {
            let email = this.inbox[0]
            freed_space += (email['size'] as Int64) ?? 0
            this.inbox.remove(at: 0)
        }
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
