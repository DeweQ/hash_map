module DataStructure
  # HashMap class
  class HashMap
    attr_reader :capacity
    
    def initialize(capacity = 16,load_factor = 0.75)
      @capacity = capacity
      @load_factor = load_factor
    end
  end
end