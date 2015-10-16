class PrioritiesController < ApplicationController
  before_action :set_priority, only: [:update, :show, :destroy]
  respond_to :json

  def create
    @priority = current_project.priorities.new(priority_params)
    if @priority.save
      render json: @priority
    else
      render text: "error: #{@priority.errors.full_messages}", status: 400
    end
  end

  def update
    if @priority.update_attributes(priority_params)
      render json: @priority
    else
      render text: "error: #{@priority.errors.full_messages}", status: 400
    end
  end

  def index
    @priorities = current_project.priorities
    respond_with @priorities
  end

  def show
    render json: @priority
  end

  def destroy
    if @priority.destroy()
      render({destroyed: true}.to_json)
    else
      render text: "error: #{@priority.errors.full_messages}", status: 400
    end
  end

  private

  def priority_params
    params.require(:priority).permit(:name, :value)
  end

  def set_priority
    @priority = current_project.priorities.find(params[:id])
  end
end
