

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(filter_by_prefix):
    assert filter_by_prefix([], 'john') == []
    assert filter_by_prefix(['xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'], 'xxx') == ['xxx', 'xxxAAA', 'xxx']


if __name__ == "__main__":
    check(filter_by_prefix)