require('word')
require('rspec')

describe('.#word') do

  before(:each) do
    @word = Word.new("Cat", nil)
    @word2 = Word.new("Dog", nil)
  end

  after(:each) do
    Word.clear
  end

  describe(".all") do
    it("returns an empty array when there are no words") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same word if it has the same attributes as another word") do
      word = Word.new("Cat", nil)
      word2 = Word.new("Cat", nil)
      expect(word).to(eq(word2))
    end
  end

  describe('.find') do
    it("finds a word by id") do
      word = Word.new("Cat", nil)
      word.save()
      word2 = Word.new("Dog", nil)
      word2.save()
      expect(Word.find(word.id)).to(eq(word))
    end
  end

  describe('#save') do
    it("saves an word") do
      word = Word.new("Cat", nil) # nil added as second argument
      word.save()
      word2 = Word.new("Dog", nil) # nil added as second argument
      word2.save()
      expect(Word.all).to(eq([word, word2]))
    end
  end

  describe('.clear') do
    it("clears all words") do
      word = Word.new("Cat", nil)
      word.save()
      word2 = Word.new("Dog", nil)
      word2.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('#update') do
    it("updates a word by id") do
      word = Word.new("Cat", nil)
      word.save()
      word.update("Tiger")
      expect(word.definition).to(eq("Tiger"))
    end
  end

  def ==(other_word)
    self.name.eql?(other_word.definition)
  end

  describe('#delete') do
    it("deletes a word by id") do
      word = Word.new("Cat", nil)
      word.save()
      word2 = Word.new("Dog", nil)
      word2.save()
      word.delete()
      expect(Word.all).to(eq([word2]))
    end
  end
end
