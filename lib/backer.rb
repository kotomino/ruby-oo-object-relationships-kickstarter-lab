class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projectbackers = ProjectBacker.all.select {|pb| pb.backer == self}
        projectbackers.collect {|pb| pb.project}
    end

end