class Project
  include Mongoid::Document
  field :title

  has_many :user_projects
  has_many :priorities

  validates_presence_of :title

  def users
    user_projects.map &:user
  end
end
