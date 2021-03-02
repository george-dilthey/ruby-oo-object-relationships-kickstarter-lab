require './lib/project_backer.rb'
require './lib/project.rb'

class Backer

    attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select {|i| i.backer == self}.map {|j| j.project}
    end


end