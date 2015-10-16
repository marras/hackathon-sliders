class Admin::ProjectsController < Admin::AdminController
  def index
    @projects = Project.all
  end
end
