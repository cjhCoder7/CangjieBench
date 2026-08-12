#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func Strongest_Extension(class_name: String, extensions: ArrayList<String>): String {
    /*
    You will be given the name of a class (a string) and a list of extensions.
    The extensions are to be used to load additional classes to the class. The
    strength of the extension is as follows: Let CAP be the number of the uppercase
    letters in the extension's name, and let SM be the number of lowercase letters 
    in the extension's name, the strength is given by the fraction CAP - SM. 
    You should find the strongest extension and return a string in this 
    format: ClassName.StrongestExtensionName.
    If there are two or more extensions with the same strength, you should
    choose the one that comes first in the list.
    For example, if you are given "Slices" as the class and a list of the
    extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
    return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
    (its strength is -1).
    Example:
    for Strongest_Extension('my_class', ArrayList<String>(['AA', 'Be', 'CC'])) == 'my_class.AA'
    */
    var strong = extensions[0]
    var my_val_up = 0
    var my_val_low = 0
    for (x in extensions[0].toRuneArray()) {
        if (x.isAsciiUpperCase()) {
            my_val_up += 1
        } else if (x.isAsciiLowerCase()) {
            my_val_low += 1
        }
    }
    var my_val = my_val_up - my_val_low
    for (s in extensions) {
        var val_up = 0
        var val_low = 0
        for (x in s.toRuneArray()) {
            if (x.isAsciiUpperCase()) {
                val_up += 1
            } else if (x.isAsciiLowerCase()) {
                val_low += 1
            }
        }
        if ((val_up - val_low) > my_val) {
            strong = s
            my_val = val_up - val_low
        }
    }
    let ans = class_name + "." + strong
    return ans
}
__CANGJIEBENCH_SOLUTION__
