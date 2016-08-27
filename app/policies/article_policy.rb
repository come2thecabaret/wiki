class ArticlePolicy < ApplicationPolicy
  def update?
    user.present?
  end
end
