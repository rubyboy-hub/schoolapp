# frozen_string_literal: true

class Standard < ApplicationRecord
  has_many :user
  belongs_to :teacher_in_charge
end
