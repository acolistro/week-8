class Word
  attr_reader :id, :definition

  @@words = {}
  @@total_rows = 0


  def initialize(definition, id)
    @definition = definition
    @id = id || @@total_rows += 1
  end

  def self.all()
    @@words.values
  end

  def ==(word_to_compare)
    self.definition() == word_to_compare.definition()
  end

  def self.find(id)
    @@word[id]
  end

  def self.find_by_word(definition)
    x = 1
    while x <= @@words.length
      if @@words[x].definition == definition
        return @@words[x]
      end
      x = x + 1
    end
  end

  def save()
    @@words[self.id] = Word.new(self.definition, self.id)
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def update(definition)
    @definition = definition
  end

  def delete
    @@words.delete(self.id)
  end
end
