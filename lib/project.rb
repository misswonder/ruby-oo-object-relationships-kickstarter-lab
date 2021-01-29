class Project

    attr_reader :title 

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select { |project_backer| project_backer.project == self }
        project_backers.map { |project_backer| project_backer.backer }
    end
end 


    # def initialize(title)
    #     @title = title
    #     @backers = []
    # end 

    # def add_backer(backer)
    #     ProjectBacker.new(self, backer)
    #     @backers << backer 
    # end 

    # def backers 
    #     @backers
    # end
        
    

    # def initialize(title)
    #     @title = title
    #     @project_backers = []
    # end 

    # def add_backer(backer)
    #     @project_backers << ProjectBacker.new(self, backer) 
    # end 

    # def backers 
    #     @project_backers.map { |project_backer| project_backer.backer }
    # end


    

    

    