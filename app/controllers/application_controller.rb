# frozen_string_literal: true

class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    def after_sign_in_path(resource)
        user_path(resource)
    end
end
