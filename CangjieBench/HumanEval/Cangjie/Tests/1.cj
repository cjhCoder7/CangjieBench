
main(){
    if (separate_paren_groups('(()()) ((())) () ((())()())') != ArrayList<String>(['(()())', '((()))', '()', '((())()())'])) {
        throw Exception('Test failed!')
    }
    if (separate_paren_groups('() (()) ((())) (((())))') != ArrayList<String>(['()', '(())', '((()))', '(((())))'])) {
        throw Exception('Test failed!')
    }
    if (separate_paren_groups('(()(())((())))') != ArrayList<String>(['(()(())((())))'])) {
        throw Exception('Test failed!')
    }
    if (separate_paren_groups('( ) (( )) (( )( ))') != ArrayList<String>(['()', '(())', '(()())'])) {
        throw Exception('Test failed!')
    }
}