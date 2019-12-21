class Word
  attr_reader :id, :word_name, :definition

  @@words = {}
  @@total_rows = 0


  def initialize(word_name, definition, id)
    @word_name = word_name
    @definition = definition
    @id = id || @@total_rows += 1
  end

  def self.all()
    @@words.values
  end

  def ==(word_to_compare)
    self.word_name() == word_to_compare.word_name()
  end

  def self.find(id)
    @@words[id]
  end

  def self.find_by_word(word_name)
    x = 1
    while x <= @@words.length
      if @@words[x].word_name == word_name
        return @@words[x]
      end
      x = x + 1
    end
  end

  def save()
    @@words[self.id] = Word.new(self.word_name, self.definition, self.id)
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def update(word_name, definition)
    @word_name = word_name
    @definition = definition
  end

  def delete
    @@words.delete(self.id)
  end
end
