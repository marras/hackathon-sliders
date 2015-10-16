class Priority
  include Mongoid::Document
  field :name, type: String
  field :value, type: Float, default: 5

  belongs_to :project

  validates_presence_of :name, :project, :value
  validates_uniqueness_of :name, scope: :project_id
  validate :value_range

  private

  def value_range
    errors.add(:value, "out of range") unless value.in? (0..10)
  end
end

