def count_substrings(string,dictionary)
  dictionary.reduce(Hash.new(0)) do |result,substring|
    string  = string.downcase
    if string.include?(substring)
      spaces_around_substring = string.gsub(substring," #{substring} ")
      count_substrings_occurence = spaces_around_substring.split(" ").count(substring)
      result[substring] = count_substrings_occurence
    end
    result
    
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","el"]
p count_substrings("How to write your own programm?", dictionary)