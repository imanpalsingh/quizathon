class Quiz < ApplicationRecord
  has_many :questions
  has_many :user_quiz_sessions
  has_many :users, through: :user_quiz_sessions

  attr_accessor :user_id

  before_create :generate_unique_permalink
  after_update_commit :broadcast_start_quiz, if: :saved_change_to_active?

  def generate_unique_permalink
    self.permalink = SecureRandom.uuid
  end

  def broadcast_start_quiz
    broadcast_replace partial: 'shared/quiz/quiz_start',
                      locals: { question: questions.first, user_quiz_session: user_quiz_session },
                      target: 'quiz-menu'

  end


  def next_question(question)
    position = questions.find(question).position

    questions.where("position > ?", position).first
  end

  def user_quiz_session
    user_quiz_sessions.find_by(user_id: user_id)
  end
end
