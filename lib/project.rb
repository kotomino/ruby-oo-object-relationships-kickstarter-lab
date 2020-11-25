class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projectbackers = ProjectBacker.all.select {|pb| pb.project == self}
        projectbackers.collect {|pb| pb.backer}
    end
end