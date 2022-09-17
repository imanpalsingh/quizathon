class Question < ApplicationRecord
  belongs_to :quiz
  has_many :choices
  has_one :answer, -> { where(is_correct: true) }, class_name: 'Choice'


  validates :text, uniqueness: :true
end
