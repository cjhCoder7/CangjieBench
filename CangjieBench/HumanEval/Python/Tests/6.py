

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(parse_nested_parens):
    assert parse_nested_parens('(()()) ((())) () ((())()())') == [2, 3, 1, 3]
    assert parse_nested_parens('() (()) ((())) (((())))') == [1, 2, 3, 4]
    assert parse_nested_parens('(()(())((())))') == [4]


if __name__ == "__main__":
    check(parse_nested_parens)