class Quiz < ApplicationRecord
  has_many :questions
  has_many :user_quiz_sessions
  has_many :users, through: :user_quiz_sessions

  before_create :generate_unique_permalink

  def generate_unique_permalink
    self.permalink = SecureRandom.uuid
  end
end
