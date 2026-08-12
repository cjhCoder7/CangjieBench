import std.collection.*
import std.convert.*
import std.crypto.digest.Digest

main() {
    if (string_to_md5("Hello world") != "3e25960a79dbc69b674cd4ec67a72c62") {
        throw Exception("Test Failed!")
    }
    if (string_to_md5("") != None) {
        throw Exception("Test Failed!")
    }
    if (string_to_md5("A B C") != "0ef78513b0cb8cef12743f5aeb35f888") {
        throw Exception("Test Failed!")
    }
    if (string_to_md5("password") != "5f4dcc3b5aa765d61d8327deb882cf99") {
        throw Exception("Test Failed!")
    }
}
