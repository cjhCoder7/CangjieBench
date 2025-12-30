

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(count_distinct_characters):
    assert count_distinct_characters('') == 0
    assert count_distinct_characters('abcde') == 5
    assert count_distinct_characters('abcde' + 'cade' + 'CADE') == 5
    assert count_distinct_characters('aaaaAAAAaaaa') == 1
    assert count_distinct_characters('Jerry jERRY JeRRRY') == 5


if __name__ == "__main__":
    check(count_distinct_characters)