class QuestionPoint < ApplicationRecord
  belongs_to :question
  belongs_to :user

  def to_s
    self.point
  end
end
