class User < ApplicationRecord
  validates :username, presence: true, length: {in: 6..15}
  validates :password, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
