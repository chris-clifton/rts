class Cache

    def initialize
      @cache = {}
      @limit = 1000
    end

    # Return the value associated with the given key
    def get(key)
      @cache[key]
    end
    
    # Store key value pair in @cache
    def put(key, value)
      if @limit > 0
        @cache[key] = value
        @limit -= 1
      else
        puts "Cache is full"
      end

    end

end