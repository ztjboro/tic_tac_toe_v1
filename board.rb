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

    def place_mark(position, mark)
        x = position[0] - 1
        y = position[1] - 1
        if self.empty?(position)
          @grid[x][y] = mark
          return mark
        elsif !self.valid?(position)
            return "Position invalid"
        elsif !self.empty?(position)
            return "Position taken"
        end  
    end

    def print
    end

    
end