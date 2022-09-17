class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_quiz_sessions
  has_many :quizzes, through: :user_quiz_sessions

  validates :first_name, :last_name, :email, presence: :true
  validates :email, uniqueness: :true

  def name
    "#{first_name} #{last_name}"
  end

  def score
    # TODO: Add logic
    10
  end

  def won
    # TODO: Add logic
    false
  end
end
