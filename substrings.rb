def substrings(string1,dictionary)
  array_words=string1.downcase.split

  occurence={}
  for sub in dictionary do
    occurence[sub]=0
  end
  puts occurence

  for word in array_words
    for sub in dictionary
      if word.include? sub
        occurence[sub]+=1
      end
    end
  end
  puts occurence.select{|k,v| v>0}

end
substrings("Howdy partner, sit down! How's it going?",["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
