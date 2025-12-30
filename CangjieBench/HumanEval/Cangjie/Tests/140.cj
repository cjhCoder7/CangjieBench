
main() {
    if (fix_spaces("Example") != "Example") {
        throw Exception("Test Failed!")
    }
    if (fix_spaces("Mudasir Hanif ") != "Mudasir_Hanif_") {
        throw Exception("Test Failed!")
    }
    if (fix_spaces("Yellow Yellow  Dirty  Fellow") != "Yellow_Yellow__Dirty__Fellow") {
        throw Exception("Test Failed!")
    }
    if (fix_spaces("Exa   mple") != "Exa-mple") {
        throw Exception("Test Failed!")
    }
    if (fix_spaces("   Exa 1 2 2 mple") != "-Exa_1_2_2_mple") {
        throw Exception("Test Failed!")
    }
}
