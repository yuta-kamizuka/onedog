# README

## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|password|string|null: false|
|email|string|null: false|
|first_name|string|null: false|
|family_name|string|null: false|
|first_name_kana|string|null: false|
|family_name_kana|string|null: false|
|house_number|string|null: false|
### Association
- has_many:seller_dog, foreign_key: true
- has_many:buyer_dog, foreign_key: true

## dogs table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|introduction|text|null: false|
|dog_breed|string|null: false|
|age|integer|null: false|
|sex|string|null: false|
|condition|string|null: false|
### Association
- has_many :image
- belongs_to_active_hash :dog_breed
- belongs_to_active_hash :age
- belongs_to_active_hash :sex
- belongs_to_active_hash :condition
