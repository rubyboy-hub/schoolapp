# frozen_string_literal: true

class Comment < ApplicationRecord
  has_many :user
  belongs_to:sub_comment
end
