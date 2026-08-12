#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList

class UrlPath {

    let segments: ArrayList<String>
    var with_end_tag: Bool

    public init() {
        this.segments = ArrayList<String>()
        this.with_end_tag = false
    }

    public func add(segment: String): Unit {
        this.segments.add(fix_path(segment))
    }

    public func parse(path: String): Unit {
        if (path != "") {
            if (path.endsWith('/')) {
                this.with_end_tag = true
            }

            let path = fix_path(path)
            if (path != "") {
                let split = path.split('/')
                for (seg in split) {
                    if (seg != "") {
                        let decoded_seg = seg
                        this.segments.add(decoded_seg)
                    }
                }
            }
        }
    }

    public static func fix_path(path: String): String {
        if (path == "") {
            return ''
        }
        let segment_str = path.trimEnd('/').trimStart('/')
        return segment_str
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
