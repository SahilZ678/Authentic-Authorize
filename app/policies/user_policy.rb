class UserPolicy < ApplicationPolicy
    def admin?
        user.present? ? user.admin? : false
    end
end