class Priority
  include Mongoid::Document
  field :name, type: String
  field :value, type: Float

  belongs_to :project

  validates_presence_of :name
end

