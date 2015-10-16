class Admin::AdminController < ApplicationController
  before_action :require_admin!

  def require_admin!
    return false unless admin?
  end
end

