## lexer (tokenizer) -> parser -> code generator

class Tokenizer
  TOKEN_TYPES = [[:def, /\bdef\b/], [:end, /\bend\b/], /\b[a-zA-Z]+\b/]
  def initialize(code)
      @code = code
  end

  def tokenize
    until @code.empty?
      TOKEN_TYPES.each do |type, re|
        end
    end
  end
end

tokens = Tokenizer.new(File.read("test.src")).tokenize
p tokens
