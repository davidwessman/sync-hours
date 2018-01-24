# frozen_string_literal: true

class User < ApplicationRecord
  include Clearance::User
  has_many(:locations)
  has_many(:connections, through: :locations)
  enum(role: { normal: 0, admin: 10 })
end
