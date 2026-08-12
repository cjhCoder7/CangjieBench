#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.HashMap
import std.time.DateTime

class AccessGatewayFilter {
    
    public init() {
    }

    public func filter(request: HashMap<String, Any>): Bool {
        let request_uri = (request["path"] as String) ?? ""
        let method = (request["method"] as String) ?? ""

        if (is_start_with(request_uri)) {
            return true
        }

        try {
            let token = get_jwt_user(request) ?? HashMap<String, Any>()
            let user = (token['user'] as HashMap<String, Any>) ?? HashMap<String, Any>()
            if (((user['level'] as Int64) ?? 0) > 2) {
                set_current_user_info_and_log(user)
                return true
            }
        } catch (e: Exception) {
            return false
        }
        return false
    }

    public func is_start_with(request_uri: String): Bool {
        let start_with = ["/api", "/login"]
        for (s in start_with) {
            if (request_uri.startsWith(s)) {
                return true
            }
        }
        return false
    }

    public func get_jwt_user(request: HashMap<String, Any>): Option<HashMap<String, Any>> {
        let token = (((request['headers'] as HashMap<String, Any>) ?? HashMap<String, Any>())['Authorization'] as HashMap<String, Any>) ?? HashMap<String, Any>()
        let user = (token['user'] as HashMap<String, Any>) ?? HashMap<String, Any>()
        let jwt = (token['jwt'] as String) ?? ""

        if (jwt.startsWith((user['name'] as String) ?? "")) {
            let jwt_str_date = jwt.split((user['name'] as String) ?? "")[1]
            let jwt_date = DateTime.parse(jwt_str_date, "yyyy-MM-dd")
            if (jwt_date.addDays(3) <= DateTime.now()) {
                return None
            }
        }
        return token
    }

    public func set_current_user_info_and_log(user: HashMap<String, Any>): Unit {
        let host = (user['address'] as String) ?? ""
        let message = ((user['name'] as String) ?? "") + host + DateTime.now().toString()
        println(message)
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
