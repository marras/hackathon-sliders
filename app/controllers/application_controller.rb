class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  helper_method :current_project
  def current_project
    Project.find(session[:project_id])
  end

  helper_method :admin?
  def admin?
    current_user.try(:admin)
  end

  def after_sign_in_path_for(resource)
    projects_path
  end

  def default_serializer_options
    {root: false}
  end
end
