#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
class PersonRequest {

    let name: Option<String>
    let sex: Option<String>
    let phoneNumber: Option<String>

    public init(name: String, sex: String, phoneNumber: String) {
        this.name = _validate_name(name) 
        this.sex = _validate_sex(sex)
        this.phoneNumber = _validate_phoneNumber(phoneNumber)
    }

    public static func _validate_name(name: String): Option<String> {
        if (name == "") {
            return None
        }
        if (name.size > 33) {
            return None
        }
        return name
    }

    public static func _validate_sex(sex: String): Option<String> {
        if (!["Man", "Woman", "UGM"].contains(sex)) {
            return None
        }
        return sex
    }

    public static func _validate_phoneNumber(phoneNumber: String): Option<String> {
        if (phoneNumber == "") {
            return None
        }
        var is_digit = true
        for (c in phoneNumber.toRuneArray()) {
            if (!c.isAsciiNumber()) {
                is_digit = false
                break
            }
        }
        if (phoneNumber.size != 11 || !is_digit) {
            return None
        }
        return phoneNumber
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
