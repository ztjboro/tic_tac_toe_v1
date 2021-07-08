class Board

    def initialize
        @grid = Array.new(3) { Array.new(3){"_"} }
    end

    def valid?(position)
        x = position[0] - 1
        y = position[1] - 1
        if  (@grid.length > x && x >= 0) && (@grid[0].length > y && y >= 0)
            return true
        else 
            return false
        end
    end
    
    def empty?(position)
        x = position[0] - 1
        y = position[1] - 1
        if self.valid?(position) && (@grid[x][y] == "_")
            return true
        else
            return false
        end
    end

    
end