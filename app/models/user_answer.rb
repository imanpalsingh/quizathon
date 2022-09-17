class UserAnswer < ApplicationRecord
  belongs_to :user_quiz_session
  belongs_to :question
  belongs_to :choice
end
