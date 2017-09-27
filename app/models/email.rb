class Email
  include ActiveModel::Model
  attr_accessor :to, :subject, :body
  validates :subject, :body, presence: true
  validates :to, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end