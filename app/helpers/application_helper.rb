module ApplicationHelper

  def current(question)
    question.position
  end

  def total(user_quiz_session)
    user_quiz_session.quiz.questions.count
  end
end
