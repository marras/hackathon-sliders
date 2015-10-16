class UserProject
  include Mongoid::Document

  field :user_id, type: String
  field :project_id, type: String

  def user
    User.find(user_id)
  end

  def project
    Project.find(project_id)
  end
end
