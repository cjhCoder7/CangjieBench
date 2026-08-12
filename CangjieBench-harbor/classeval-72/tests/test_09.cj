import std.regex.Regex
import std.collection.ArrayList

func test_extract_email_1() {
    let ru = RegexUtils()
    let res = ru.extract_email("abcdefg@163.com ygusyfysy@126.com wljduyuv@qq.com")
    let expected = ArrayList<String>(["abcdefg@163.com", "ygusyfysy@126.com", "wljduyuv@qq.com"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_extract_email_2() {
    let ru = RegexUtils()
    let res = ru.extract_email("abcdefg@.com ygusyfysy@126.com wljduyuv@qq.com")
    let expected = ArrayList<String>(["ygusyfysy@126.com", "wljduyuv@qq.com"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_extract_email_3() {
    let ru = RegexUtils()
    let res = ru.extract_email("abcdefgiscom ygusyfysy@126.com wljduyuv@qq.com")
    let expected = ArrayList<String>(["ygusyfysy@126.com", "wljduyuv@qq.com"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_extract_email_4() {
    let ru = RegexUtils()
    let res = ru.extract_email("abcdefgiscom ygusyfysy126.com wljduyuv@qq.com")
    let expected = ArrayList<String>(["wljduyuv@qq.com"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_extract_email_5() {
    let ru = RegexUtils()
    let res = ru.extract_email("abcdefgiscom ygusyfysy@.com wljduyuv@qq.com")
    let expected = ArrayList<String>(["wljduyuv@qq.com"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_extract_email_1()
    test_extract_email_2()
    test_extract_email_3()
    test_extract_email_4()
    test_extract_email_5()
}
