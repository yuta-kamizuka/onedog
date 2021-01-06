class Dog < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  belongs_to :dog_breed
  belongs_to :age
  belongs_to :sex
  belongs_to :condition

  validates :dog_breed_id, :age_id, :sex_id, :condition_id, presence: true

  enum status: {
    "募集中": 1,
    "里親見つかりました": 2
  }
end
