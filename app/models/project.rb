class Project
  include Mongoid::Document
  field :title

  belongs_to :user
  has_many :priorities

  validates_presence_of :title
end
