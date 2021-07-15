
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
            return "Mark Placed"
            self.print
        elsif !self.valid?(position)
            return "Position invalid"
            self.print
        elsif !self.empty?(position)
            return "Position taken"
            self.print
        end  
    end

    def print
        @grid.each do |row|
            puts "_______________"
            puts row.inspect
        end
    end

    def win_row?(mark)
        @grid.each do |row| 
            if row.uniq.length == 1 && row[0] == mark
                return true
            end
        end
        false
    end

    def win_col?(mark)
        @grid.transpose.each do |col| 
            if col.uniq.length == 1 && col[0] == mark
                return true
            end
        end
        false
    end

    def diagonal
        [[@grid[0][0], @grid[1][1], @grid[2][2]], [@grid[0][2], @grid[1][1], @grid[2][0]]]
    end

    def win_diagonal?(mark)
        diagonal.any? do |diag|
            diag.all?{|pos| pos == mark}
        end
    end
    
    def win?(mark)
        win_col?(mark) || win_row?(mark) || win_diagonal?(mark)
    end
    
    def empty_positions?
        @grid.any? do |row|
            row.any? {|cell| cell == "_"}
        end 
        end
end