class Project
    attr_accessor :name, :description, :owner, :tasks
    def initialize(project_name, description, owner)
        @name = project_name
        @description = description
        @owner = owner
        @tasks = []
    end
    def elevator_pitch
        p "#{@name}, #{@description}, #{@owner}"
    end

    def tasks
        return @tasks
    end

    def add_tasks task
        @tasks << task
    end

    def print_tasks
        p @tasks
    end
end