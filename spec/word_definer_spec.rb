require('word_definer')
require('rspec')

describe('.#word_definer') do

  describe(".all") do
    it("returns an empty array when there are no albums") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same album if it has the same attributes as another album") do
      word = Word.new("Cat", nil)
      word2 = Word.new("Cat", nil)
      expect(word).to(eq(word2))
    end
  end

  describe('#save') do
    it("saves an album") do
      word = Word.new("Cat", nil) # nil added as second argument
      word.save()
      word2 = Word.new("Dog", nil) # nil added as second argument
      word2.save()
      expect(Word.all).to(eq([word, word2]))
    end  
  end

  def ==(other_word)
    self.name.eql?(other_word.definition)
  end

end
