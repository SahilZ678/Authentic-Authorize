class DashboardController < ApplicationController
    before_action :set_user
    before_action :authorize_user, only: [:admin]
    before_action :authenticate_user!, only: [:admin]
    def index
        @image_url = []
        @images = Product.all

        @images.each do |i|
            @image_url.push(i.image&.url) if i.image.present?
        end
    end

    def admin
    end

    private
    def set_user
        @user = current_user
    end

    def authorize_user
        authorize @user if @user.present?
    end
end
