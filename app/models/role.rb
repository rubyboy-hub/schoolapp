# frozen_string_literal: true

class Role < ApplicationRecord
    # acts_as_authorization_role
    has_many :user
end
