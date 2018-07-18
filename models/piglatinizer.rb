class PigLatinizer




  def translate(word)
    if word[0] == "a" || "e" || "o" || "u" || "i"
        word = word + "ay"
    elsif word[0] != "a" || "e" || "o" || "u" || "i"
        word = word-word[0]+"ay"
    end
  end

  def to_pig_latin(text)
    words = text.split(" ")
    words.maps!{|word| piglatinize(word)}
    words.join(" ")
  end

  # def vowel?(letter)
  #   letter.downcase
  #   letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
  # end


end
