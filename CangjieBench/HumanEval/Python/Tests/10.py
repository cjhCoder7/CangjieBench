

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(make_palindrome):
    assert make_palindrome('') == ''
    assert make_palindrome('x') == 'x'
    assert make_palindrome('xyz') == 'xyzyx'
    assert make_palindrome('xyx') == 'xyx'
    assert make_palindrome('jerry') == 'jerryrrej'


if __name__ == "__main__":
    check(make_palindrome)