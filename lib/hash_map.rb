module DataStructure
  # HashMap class
  class HashMap
    attr_reader :capacity
    
    def initialize(capacity = 16,load_factor = 0.75)
      @capacity = capacity
      @load_factor = load_factor
    end
    
    def hash(key)
      hash_code = 0
      prime = 79
      
      key.each_char { |chr| hash_code = prime * hash_code + chr.ord }
      
      hash_code
    end
  end
end