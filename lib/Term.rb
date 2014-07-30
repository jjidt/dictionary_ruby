class Term
  attr_accessor(:word)
  attr_accessor(:def)
  @@terms = {}

  def initialize(hash)
    @word = hash[:word]
    @def = hash[:def]
    @@terms[@word] = self
  end

  def self.terms
    @@terms
  end

end
