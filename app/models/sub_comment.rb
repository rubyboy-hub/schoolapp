# frozen_string_literal: true

class SubComment < ApplicationRecord
  belongs_to :comment
end
