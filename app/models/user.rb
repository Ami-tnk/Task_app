class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tasks, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :task_comments, dependent: :destroy

  validates :name, uniqueness: true, length: { minimum: 2, maximum: 20}

end
