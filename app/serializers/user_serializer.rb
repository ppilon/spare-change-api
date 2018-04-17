# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_profile
  def user_profile
    object.user_profile
  end
end
