class UserQuizSession < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  after_create_commit do
    broadcast_append_to 'user_quiz_sessions',
                        partial: 'shared/leaderboard/item',
                        locals: { user: user },
                        target: 'user_quiz_sessions'
  end

  after_update_commit do
    broadcast_replace_to 'user_quiz_sessions_stream',
                          partial: 'shared/leaderboard/list',
                          locals: { data: quiz.user_quiz_sessions.order('score DESC') },
                          target: 'user_quiz_sessions'
  end
end
