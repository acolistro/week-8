require('word_definer')
require('rspec')

describe('.#word_definer') do

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end
end
