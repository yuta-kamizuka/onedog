class Dog < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  belongs_to_active_hash :dog_breed
  belongs_to_active_hash :age
  belongs_to_active_hash :sex
  belongs_to_active_hash :condition

  validates :dog_breed_id, :age_id, :sex_id, :condition_id, presence: true

  enum status: {
    "募集中": 1,
    "里親見つかりました": 2
  }
end
