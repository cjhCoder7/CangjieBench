#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.HashMap
import std.collection.ArrayList

class SQLQueryBuilder {

    public static func select(table: String, columns!: ArrayList<String> = ArrayList<String>(['*']), where_condition!: Option<HashMap<String, String>> = None): String {
        var columns_str = ""
        if (columns != ArrayList<String>(['*'])) {
            columns_str = String.join(columns.toArray(), delimiter: ", ")
        } else {
            columns_str = "*"
        }
        var query = "SELECT ${columns_str} FROM ${table}"
        if (where_condition != None) {
            let where_arr = ArrayList<String>()
            let where_condition_map = where_condition ?? HashMap<String, String>()
            for ((k, v) in where_condition_map) {
                where_arr.add("${k}='${v}'")
            }
            query += " WHERE " + String.join(where_arr.toArray(), delimiter: ' AND ')
        }
        return query
    }

    public static func insert(table: String, data: HashMap<String, String>): String {
        let keys = String.join(data.keys().toArray(), delimiter: ", ")
        let values_arr = ArrayList<String>()
        for (v in data.values()) {
            values_arr.add("'${v}'")
        }
        let values = String.join(values_arr.toArray(), delimiter: ", ")
        return "INSERT INTO ${table} (${keys}) VALUES (${values})"
    }

    public static func delete(table: String, where_condition!: Option<HashMap<String, String>> = None): String {
        var query = "DELETE FROM ${table}"
        if (where_condition != None) {
            let where_arr = ArrayList<String>()
            let where_condition_map = where_condition ?? HashMap<String, String>()
            for ((k, v) in where_condition_map) {
                where_arr.add("${k}='${v}'")
            }
            query += " WHERE " + String.join(where_arr.toArray(), delimiter: ' AND ')
        }
        return query
    }

    public static func update(table: String, data: HashMap<String, String>, where_condition!: Option<HashMap<String, String>> = None): String {
        let data_arr = ArrayList<String>()
        for ((k, v) in data) {
            data_arr.add("${k}='${v}'")
        }
        let update_str = String.join(data_arr.toArray(), delimiter: ", ")
        var query = "UPDATE ${table} SET ${update_str}"
        if (where_condition != None) {
            let where_arr = ArrayList<String>()
            let where_condition_map = where_condition ?? HashMap<String, String>()
            for ((k, v) in where_condition_map) {
                where_arr.add("${k}='${v}'")
            }
            query += " WHERE " + String.join(where_arr.toArray(), delimiter: ' AND ')
        }
        return query
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
