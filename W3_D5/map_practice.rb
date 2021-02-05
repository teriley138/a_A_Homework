class Map
    def initialize
        @map = []
    end

    def set(key, value)
        if set_helper(key)
            @map.each { |pair| @map[key] = value if key == pair[0] }
        else
            @map << [key, value]
    end

    def set_helper(key)
        @map.any? {|pair| pair[0] == key}
    end

    def get(key)
        @map.each { |pair| return pair[1] if pair[0] == key }
        nil
    end

    def delete(key)
        @map.each {|pair| delete.(pair) if pair[0] == key}
    end

    def show

    end
end