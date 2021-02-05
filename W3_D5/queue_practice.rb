class Queue

    attr_reader :queue
    
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(ele)
    end

    def dequeue
        @queue.shift
    end

    def peek
        return @queue[0]
    end
end
