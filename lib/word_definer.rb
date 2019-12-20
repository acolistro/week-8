class Word
  attr_reader :id, :definition

  @@words = {}
  @@total_rows = 0


  def initialize(definition, id)
    @definition = definition
    @id = id || @@total_rows += 1
  end

  # before(:each) do
  #   @word = Word.new( )
  # end

  def self.all()
    @@words.values()
  end

  def self.find()
  end

  def save
    @@words[self.id] = Word.new(self.definition, self.id)
  end
end
