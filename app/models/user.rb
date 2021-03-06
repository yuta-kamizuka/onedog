class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, length: {maximum: 6 }
  validates :first_name, presence: true, format: {
    with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/,
    message: "は全角入力をお願いします"
  }
  validates :family_name, presence: true, format: {
    with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/,
    message: "は全角入力をお願いします"
  }
  validates :first_name_kana, presence: true, format: {
    with: /\A[\p{katakana}\p{blank}ー－]+\z/,
    message: 'は全角カナで入力して下さい。'
   }
  validates :family_name_kana, presence: true, format: {
    with: /\A[\p{katakana}\p{blank}ー－]+\z/,
    message: 'は全角カナで入力して下さい。'
    }


  validates :phone, presence: true

end
