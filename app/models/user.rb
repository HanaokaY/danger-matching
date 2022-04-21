class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  enum gender: { man: 0, woman: 1 }
  # genderカラムに0が保存されていれば、「man」、1が保存されていれば「woman」という定数として扱える
end
