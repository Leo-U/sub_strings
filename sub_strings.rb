str = "Howdy partner, sit down! How's it going?"
dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
  str = str.downcase
  dict.reduce(Hash.new) do |hash, dict_el|
    hash[dict_el] = str.scan(dict_el).length if str.include?(dict_el)
    hash
  end
end

substrings(str, dict)