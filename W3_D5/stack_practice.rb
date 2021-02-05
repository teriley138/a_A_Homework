class Stack
    

    attr_reader :stack

    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack.push(el)
    end

    def pop
        @stack.pop
      # removes one element from the stack
    end

    def peek
        return @stack[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end

  