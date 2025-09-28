require "linked-list"

module DataStructure
  # HashMap class
  class HashMap
    attr_reader :length

    def initialize(capacity = 16, load_factor = 0.75)
      # @capacity = capacity
      @load_factor = load_factor
      @buckets = Array.new(capacity) { LinkedList::List.new }
      @length = 0
    end

    def capacity
      @buckets.size
    end

    def hash(key)
      hash_code = 0
      prime = 79
      key.each_char { |chr| hash_code = prime * hash_code + chr.ord }
      hash_code
    end

    def set(key, value)
      bucket = bucket_by_key(key)
      pair = find_in_bucket(bucket, key)
      if pair.nil?
        bucket.push([key, value])
        @length += 1
      else
        pair[1] = value
      end
      nil
    end

    private

    def bucket_by_key(key)
      @buckets[hash(key) % capacity]
    end

    def find_in_bucket(bucket, key)
      bucket.each { |p| return p if p in [^key, *] }
    end
  end
end
