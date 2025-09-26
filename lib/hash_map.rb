require "linked-list"

module DataStructure
  # HashMap class
  class HashMap
    attr_reader :length

    def initialize(capacity = 16, load_factor = 0.75)
      # @capacity = capacity
      @load_factor = load_factor
      @baskets = Array.new(capacity, LinkedList::List.new)
      @length = 0
    end

    def capacity
      @baskets.size
    end

    def hash(key)
      hash_code = 0
      prime = 79
      key.each_char { |chr| hash_code = prime * hash_code + chr.ord }
      hash_code
    end
  end
end
