class Dog < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  belongs_to :dog_breed
  belongs_to :sex
  belongs_to :age
  belongs_to :condition

end
