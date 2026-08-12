import std.collection.ArrayList

main() {
    if (Strongest_Extension("Watashi", ArrayList<String>(["tEN", "niNE", "eIGHt8OKe"])) != "Watashi.eIGHt8OKe") {
        throw Exception("Test Failed!")
    }
    if (Strongest_Extension("Boku123", ArrayList<String>(["nani", "NazeDa", "YEs.WeCaNe", "32145tggg"])) != "Boku123.YEs.WeCaNe") {
        throw Exception("Test Failed!")
    }
    if (Strongest_Extension("__YESIMHERE", ArrayList<String>(["t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321"])) != "__YESIMHERE.NuLl__") {
        throw Exception("Test Failed!")
    }
    if (Strongest_Extension("K", ArrayList<String>(["Ta", "TAR", "t234An", "cosSo"])) != "K.TAR") {
        throw Exception("Test Failed!")
    }
    if (Strongest_Extension("__HAHA", ArrayList<String>(["Tab", "123", "781345", "-_-"])) != "__HAHA.123") {
        throw Exception("Test Failed!")
    }
    if (Strongest_Extension("YameRore", ArrayList<String>(["HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"])) != "YameRore.okIWILL123") {
        throw Exception("Test Failed!")
    }
    if (Strongest_Extension("finNNalLLly", ArrayList<String>(["Die", "NowW", "Wow", "WoW"])) != "finNNalLLly.WoW") {
        throw Exception("Test Failed!")
    }
    if (Strongest_Extension("_", ArrayList<String>(["Bb", "91245"])) != "_.Bb") {
        throw Exception("Test Failed!")
    }
    if (Strongest_Extension("Sp", ArrayList<String>(["671235", "Bb"])) != "Sp.671235") {
        throw Exception("Test Failed!")
    }
}
