class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "not valid email"}
  validates :password, length: { in: 5..30 }
end
