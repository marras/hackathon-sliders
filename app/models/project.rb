class Project
  include Mongoid::Document
  field :title

  has_and_belongs_to_many :users
  has_many :priorities

  validates :title, uniqueness: true, presence: true
end
