class ProductPolicy < ApplicationPolicy
    def new?
        user.present? ? user.admin? : false 
    end

    def create?
        user.present? ? user.admin? : false
    end

    def edit?
        user.present? ? user.admin? : false
    end

    def update?
        user.present? ? user.admin? : false
    end

    def destroy?
        user.present? ? user.admin? : false
    end
end