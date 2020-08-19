class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :done, type: Mongoid::Boolean
  #embedded_in :todo
  
  # model association
  belongs_to :todo

  # validation
  validates_presence_of :name
end
