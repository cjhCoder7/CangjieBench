

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(longest):
    assert longest([]) == None
    assert longest(['x', 'y', 'z']) == 'x'
    assert longest(['x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc']) == 'zzzz'


if __name__ == "__main__":
    check(longest)