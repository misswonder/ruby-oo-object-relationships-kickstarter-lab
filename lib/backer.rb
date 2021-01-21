class Backer

    attr_reader :name

    # def initialize(name)
    #     @name = name
    #     @backed_projects = []
    # end

    # def back_project(project)
    #     ProjectBacker.new(project, self)
    #     @backed_projects << project 
    # end 

    # def backed_projects
    #     @backed_projects
    # end 

    # def initialize(name)
    #     @name = name
    #     @project_backers = []
    # end

    # def back_project(project)
    #     @project_backers << ProjectBacker.new(project, self) 
    # end 

    # def backed_projects
    #     @project_backers.map { |project_backer| project_backer.project }
    # end 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self) 
    end 

    def backed_projects
        project_backers = ProjectBacker.all.select { |project_backer| project_backer.backer == self }
        project_backers.map { |project_backer| project_backer.project }
    end 
end
