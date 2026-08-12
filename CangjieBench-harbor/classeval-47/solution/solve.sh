#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.convert.Parsable
import std.convert.Formattable
import std.collection.ArrayList

class IPAddress {

    let ip_address: String

    public init(ip_address: String) {
        this.ip_address = ip_address
    }

    public func is_valid(): Bool {
        let octets = this.ip_address.split('.')
        if (octets.size != 4) {
            return false
        }
        for (octet in octets) {
            if (Int64.tryParse(octet) == None || Int64.parse(octet) < 0 || Int64.parse(octet) > 255) {
                return false
            }
        }
        return true
    }

    public func get_octets(): ArrayList<String> {
        if (this.is_valid()) {
            return ArrayList<String>(this.ip_address.split('.'))
        } else {
            return ArrayList<String>()
        }
    }

    public func get_binary(): String {
        if (this.is_valid()) {
            let binary_octets = ArrayList<String>()
            for (octet in this.get_octets()) {
                binary_octets.add(Int64.parse(octet).format("08b"))
            }
            return String.join(binary_octets.toArray(), delimiter: '.')
        } else {
            return ''
        }
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
