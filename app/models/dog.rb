class Dog < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  belongs_to_active_hash :dog_breed
  belongs_to_active_hash :age
  belongs_to_active_hash :sex
  belongs_to_active_hash :condition

  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true

  validates  :images, presence: true
  validates  :name, presence: true, uniqueness: { case_sensitive: true }, length: {maximum: 10}
  validates  :introduction, presence: true, uniqueness: { case_sensitive: true }, length: {minimum: 10}

  validates  :dog_breed_id,
             :age_id,
             :sex_id,
             :condition_id,
             presence: true
  

  enum status: {
    "募集中": 1,
    "里親見つかりました": 2
  }
end
