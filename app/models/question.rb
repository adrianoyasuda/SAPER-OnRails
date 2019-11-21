class Question < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_and_belongs_to_many :tags
end
