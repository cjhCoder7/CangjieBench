

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(intersperse):
    assert intersperse([], 7) == []
    assert intersperse([5, 6, 3, 2], 8) == [5, 8, 6, 8, 3, 8, 2]
    assert intersperse([2, 2, 2], 2) == [2, 2, 2, 2, 2]


if __name__ == "__main__":
    check(intersperse)