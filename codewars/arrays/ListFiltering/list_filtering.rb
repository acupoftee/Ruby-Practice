def filter_list(l)
    # return a new list with the strings filtered out
    l.select { |x| x.is_a? Numeric }
end