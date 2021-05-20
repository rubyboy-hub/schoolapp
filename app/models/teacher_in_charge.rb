# frozen_string_literal: true

class TeacherInCharge < ApplicationRecord
  belongs_to :subject
  belongs_to :class
end
