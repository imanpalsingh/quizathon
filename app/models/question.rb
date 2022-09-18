class Question < ApplicationRecord
  belongs_to :quiz
  has_many :choices
  has_one :answer, -> { where(is_correct: true) }, class_name: 'Choice'


  validates :text, uniqueness: :true

  def is_choice_correct?(choice_id)
    choices.find(choice_id).is_correct?
  end
end
