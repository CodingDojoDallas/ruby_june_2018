class Apple_Tree
    attr_accessor :age
    attr_reader :height, :apples
    def initialize
        @age = 0
        @height = 1
        @apples = 0
    end

    def year_gone_by
        @age += 1
        @height = @height * 1.1
        @apples += 2 if @age.between?(3,11)
        return "#{@age}, #{@height}, #{@apples}"
    end

    def pick_apples
        @apples = 0
    end
end

