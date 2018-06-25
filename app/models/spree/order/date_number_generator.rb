module Spree
  class Order::DateNumberGenerator
    attr_reader :letters, :prefix

    def initialize(options = {})
      @length = options[:length] || Spree::Order::ORDER_NUMBER_LENGTH
      @letters = options[:letters] || Spree::Order::ORDER_NUMBER_LETTERS
      @prefix = options[:prefix] || Spree::Order::ORDER_NUMBER_PREFIX
    end

    def generate
      possible = (0..9).to_a
      possible += ('A'..'Z').to_a if letters
      
      date = DateTime.current.strftime("%Y%m%d")
      
      loop do
        # Make a random number.
        random = "#{prefix}#{date}-#{(0...@length).map { possible.sample }.join}"
        # Use the random number if no other order exists with it.
        if Spree::Order.exists?(number: random)
          # If over half of all possible options are taken add another digit.
          @length += 1 if Spree::Order.count > (10**@length / 2)
        else
          break random
        end
      end
    end
    
  end
end