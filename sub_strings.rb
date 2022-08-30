str = "I am going down below."
dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
  dict.reduce(Hash.new) do |hash, dict_el|
    hash[dict_el] = str.downcase.scan(dict_el).length if str.include?(dict_el)
    hash
  end
end

substrings(str, dict)