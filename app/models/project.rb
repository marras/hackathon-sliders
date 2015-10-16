class Project
  include Mongoid::Document
  field :title

  has_and_belongs_to_many :users
  has_many :priorities

  validates :title, uniqueness: true, presence: true

  after_create :add_default_priorities

  private

  def add_default_priorities
    priorities.create(name: 'Scope', obligatory: true, description: 'Feature completeness')
    priorities.create(name: 'Budget', obligatory: true, description: 'Stay within budget')
    priorities.create(name: 'Time', obligatory: true, description: 'Deliver project on time')
    priorities.create(name: 'Quality', obligatory: true, description: 'High quality, low defects')
  end
end
