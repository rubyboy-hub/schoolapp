class TeacherInCharge < ApplicationRecord
  belongs_to :subject
  belongs_to :class
end
