require_relative './stack'

def balancing_parentheses(string)
    stack = Stack.new
    chars_required = 0
    left = 0
    right = 0
    first = 0
    last = string.length
    for i in first...last do
        char = string[i]
        if (i == first && char == ")") || (i == last && char == "(")
            chars_required += 1
        else
            right += 1 if char == ")"
            left += 1 if char == "("
        end
        stack.push char
    end
    chars_required += (left - right).abs
end
