import std.collection.HashMap

class CamelCaseMap {

    let _data: HashMap<String, Any>

    public init() {
        _data = HashMap<String, Any>()
    }

    public func __getitem__(key: String): Any {
        return _data[(_convert_key(key) as String) ?? ""]
    }

    public func __setitem__(key: String, value: Any): Unit {
        _data[(_convert_key(key) as String) ?? ""] = value
    }

    public func __delitem__(key: String): Unit {
        _data.remove((_convert_key(key) as String) ?? "")
    }

    public func __len__(): Int64 {
        return _data.size
    }

    public func _convert_key(key: Any): Any {
        if (key is String) {
            return _to_camel_case((key as String) ?? "")
        }
        return key
    }

    public static func _to_camel_case(key: String): String {
        let parts = key.split("_")
        var res = "" + parts[0]
        for (i in 1..parts.size) {
            res += parts[i].toAsciiTitle()
        }
        return res
    }
}
