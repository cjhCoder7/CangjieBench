

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(parse_music):
    assert parse_music('') == []
    assert parse_music('o o o o') == [4, 4, 4, 4]
    assert parse_music('.| .| .| .|') == [1, 1, 1, 1]
    assert parse_music('o| o| .| .| o o o o') == [2, 2, 1, 1, 4, 4, 4, 4]
    assert parse_music('o| .| o| .| o o| o o|') == [2, 1, 2, 1, 4, 2, 4, 2]


if __name__ == "__main__":
    check(parse_music)