class PrioritiesController < ApplicationController
  respond_to :json

  def index
    @priorities = current_project.priorities
    respond_with @priorities
  end

end
