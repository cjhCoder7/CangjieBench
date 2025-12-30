

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(string_xor):
    assert string_xor('111000', '101010') == '010010'
    assert string_xor('1', '1') == '0'
    assert string_xor('0101', '0000') == '0101'


if __name__ == "__main__":
    check(string_xor)