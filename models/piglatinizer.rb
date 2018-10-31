class PigLatinizer

  def piglatinize(str)
    x = (str.split(" ").length == 1) ? piglatinize_word(str) : translate_word(str)
    puts x
    x
  end

  def translate_word(str)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(str[0])
      str + 'ay'
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0])
      str[1..-1] + str[0] + 'ay'
    else
      str # return unchanged
    end
  end


  def translate_sentence(sentence)
     sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
   end

end
