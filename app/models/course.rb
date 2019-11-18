class Course < ApplicationRecord
  def to_s
    self.title
  end
end
