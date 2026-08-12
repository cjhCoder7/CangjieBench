#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.HashMap
import std.collection.ArrayList

class SignInSystem {

    let users: HashMap<String, Bool>

    public init() {
        users = HashMap<String, Bool>()
    }

    public func add_user(username: String): Bool {
        if (this.users.contains(username)) {
            return false
        } else {
            this.users[username] = false
            return true
        }
    }

    public func sign_in(username: String): Bool {
        if (!this.users.contains(username)) {
            return false
        } else {
            this.users[username] = true
            return true
        }
    }

    public func check_sign_in(username: String): Bool {
        if (!this.users.contains(username)) {
            return false
        } else {
            if (this.users[username]) {
                return true
            } else {
                return false
            }
        }
    }

    public func all_signed_in(): Bool {
        var all_signed_in = true
        for (value in this.users.values()) {
            if (!value) {
                all_signed_in = false
                break
            }
        }
        if (all_signed_in) {
            return true
        } else {
            return false
        }
    }

    public func all_not_signed_in(): ArrayList<String> {
        let not_signed_in_users = ArrayList<String>()
        for ((username, signed_in) in this.users) {
            if (!signed_in) {
                not_signed_in_users.add(username)
            }
        }
        return not_signed_in_users
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
