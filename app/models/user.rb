class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      message = "is not valid. Emails must be in standard format, eg: name@domain.com"
      record.errors[attribute] << (options[:message] || message)
    end
  end
end


class User < ApplicationRecord
  has_many :posts

  has_secure_password
  validates :username, presence: true, length: {in: 6..15}, uniqueness: true
  validates :password, presence: true, length: {in: 6..10}
  validates :email, presence: true, length: {maximum: 255}, uniqueness: true, email: true
  validates :first_name, presence: true, length: {maximum: 20}
  validates :last_name, presence: true, length: {maximum: 20}
end
