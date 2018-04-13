# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_one :user_profile
  # validates_associated :user_profile
  # validates_presence_of :user_profile
  accepts_nested_attributes_for :user_profile
end
