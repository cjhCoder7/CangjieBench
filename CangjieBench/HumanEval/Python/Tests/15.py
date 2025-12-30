

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(string_sequence):
    assert string_sequence(0) == '0'
    assert string_sequence(3) == '0 1 2 3'
    assert string_sequence(10) == '0 1 2 3 4 5 6 7 8 9 10'


if __name__ == "__main__":
    check(string_sequence)