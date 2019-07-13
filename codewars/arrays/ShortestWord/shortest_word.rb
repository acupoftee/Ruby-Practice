def find_short(s)
    l = s.split.reduce do |memo, word| 
      memo.length < word.length ? memo : word
    end.length
end

def find_short_two(s)
    s.split.map(&:size).min
end