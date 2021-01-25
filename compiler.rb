class Tokenizer
  TOKEN_TYPES = [[:def, /\bdef\b/] ,
    [:end, /\bend\b/],
    [:identifier, /\b[a-zA-Z]+\b/], 
    [:integer, /\b[0-9]+\b/], 
    [:openparen, /\(/], 
    [:closeparen, /\)/]
  ]
  def initialize(code)
      @code = code
  end

  def tokenize
    TOKEN_TYPES
  end
end

tokens = Tokenizer.new(File.read("test.src")).tokenize
p tokens
