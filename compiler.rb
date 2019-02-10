## lexer (tokenizer) -> parser -> code generator

class Tokenizer
  TOKEN_TYPES = [[:def, /\bdef\b/], [:end, /\bend\b/], [:identifier, /\b[a-zA-Z]+\b/], [:integer, /\b[0-9]+\b/]]
  def initialize(code)
      @code = code
  end

  def tokenize
    until @code.empty?
      TOKEN_TYPES.each do |type, re|
        end
    end
    raise RuntimeError.new("Couldn't match token on #{{@code.inspect}}")
  end
end

tokens = Tokenizer.new(File.read("test.src")).tokenize
p tokens
