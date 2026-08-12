#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.HashMap

class Hotel {

    let name: String
    let available_rooms: HashMap<String, Int64>
    var booked_rooms: HashMap<String, HashMap<String, Int64>>

    public init(name: String, rooms: HashMap<String, Int64>) {
        this.name = name
        this.available_rooms = HashMap<String, Int64>(rooms)
        this.booked_rooms = HashMap<String, HashMap<String, Int64>>()
    }

    public func book_room(room_type: String, room_number: Int64, name: String): String {
        if (!this.available_rooms.contains(room_type)) {
            return "false"
        }

        if (room_number <= this.available_rooms[room_type]) {
            if (!this.booked_rooms.contains(room_type)) {
                this.booked_rooms[room_type] = HashMap<String, Int64>()
            }
            this.booked_rooms[room_type][name] = room_number
            this.available_rooms[room_type] -= room_number
            return "Success!"
        } else if (this.available_rooms[room_type] != 0) {
            return this.available_rooms[room_type].toString()
        } else {
            return "false"
        }
    }

    public func check_in(room_type: String, room_number: Int64, name: String): Bool {
        if (!this.booked_rooms.contains(room_type)) {
            return false
        }
        if (this.booked_rooms[room_type].contains(name)) {
            if (room_number > this.booked_rooms[room_type][name]) {
                return false
            } else if (room_number == this.booked_rooms[room_type][name]) {
                this.booked_rooms[room_type].remove(name)
                return true
            } else {
                this.booked_rooms[room_type][name] -= room_number
                return true
            }
        } else {
            return false
        }
    }

    public func check_out(room_type: String, room_number: Int64): Unit {
        if (this.available_rooms.contains(room_type)) {
            this.available_rooms[room_type] += room_number
        } else {
            this.available_rooms[room_type] = room_number
        }
    }

    public func get_available_rooms(room_type: String): Int64 {
        return this.available_rooms[room_type]
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
