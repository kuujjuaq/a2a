require 'card'

class A2A::Deck
  def initialize(*names)
    @names = names
    @deck = []
    @names.each do |name|
      @deck = @deck + get_cards(name)
    end
  end

  def get_cards(name) 
  end
yend
