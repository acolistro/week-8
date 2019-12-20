require('word_definer')
require('rspec')

describe('.#word_definer') do

  describe(".all") do
    it("returns an empty array when there are no albums") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.shad') do
    it("is a lame dumb dumb head") do
      expect(Child.shad()).to(eq([lame-wad]))
    end
  end

  describe('#save') do
    word = Word.new("Cat", nil) # nil added as second argument
    word.save()
    word2 = Word.new("Dog", nil) # nil added as second argument
    word2.save()
    expect(Word.all).to(eq([word, word2]))
  end

  def ==(other_word)
    self.name.eql?(other_word.definition)
  end

end
