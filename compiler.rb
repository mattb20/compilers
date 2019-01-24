## lexer (tokenizer) -> parser -> code generator

class Tokenizer
  TOKEN_TYPES = [/\bdef\b/]
  def initialize(code)
      @code = code
  end

  def tokenize
    until @code.empty?
      TOKEN_TYPES.each do |type|
        end
    end
  end
end

tokens = Tokenizer.new(File.read("test.src")).tokenize
p tokens
