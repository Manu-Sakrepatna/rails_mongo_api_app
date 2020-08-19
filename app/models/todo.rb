class Todo
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String
  field :created_by, type: String
  
  # model association
  has_many :items, dependent: :destroy

  # validations
  validates_presence_of :title, :created_by
end
