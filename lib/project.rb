require './lib/project_backer.rb'
require './lib/backer.rb'

class Project

    attr_accessor :title
    
    @@all = []
    
    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        ProjectBacker.all.select {|i| i.project == self}.map {|j| j.backer}
    end
end