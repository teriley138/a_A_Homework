class GraphNode

    attr_reader :value, :neighbors

    def intitialize(value, neighbors)
        @value = value
        @neighbors = neighbors.map {|ele| ele }
    end

    def bfs(starting_node, target_value)
        queue = [starting_node]
        visited = Set.new

        while !queue.empty?
            return true if queue[0].value == target_value
            visited.add(queue[0])
            if visited.include?(queue[0])
                queue.shift
            else
                queue[0].neighbors.each {|neighbor| queue << neighbor}
                queue.shift
            end   
        end
        false
    end
end