class Tokenizer
  TOKEN_TYPES = [
    [:def, /\bdef\b/],
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
    tokens = []
    until @code.empty?
      tokens << get_first_token
      @code = @code.strip
    end
    tokens
  end
  def get_first_token
    TOKEN_TYPES.each do |type, regex|
      re = /\A(#{regex})/
      if @code  =~ re
        value = $1
        @code = @code[value.length..-1]
        return Token.new(type, value)
      end
    end
    raise RuntimeError.new("Couldn't match token on #{@code.inspect}")
  end
end

Token = Struct.new(:type, :value)

tokens = Tokenizer.new(File.read("test.src")).tokenize
puts tokens.map(&:inspect).join("\n")