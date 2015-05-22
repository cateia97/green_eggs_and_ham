class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end

  def words
    @text.split.map do |word|
      word.downcase.gsub(/[^a-z-]/, '')
    end
  end

  # def stanzas
  # end

  # def lines
  # end

  def word_count
    words.count  
  end

  def sorted_unique_words
    words.sort.uniq
  end

  def number_of_words_shorter_than(len)
    words.reject { |w| w.length >= len }.count
  end

  def longest_word
    word = "Sam-I-am!"
    word.downcase.gsub(/[^a-z-]/, '') # => "sam-i-am"
  end

  def frequency_of_unique_words
    words.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end
end
