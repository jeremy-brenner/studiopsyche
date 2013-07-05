class User < ActiveRecord::Base
  validates :password, presence: true, length: { minimum: 8 }
  validates :password_confirmation, presence: true
  has_secure_password
  before_save :create_remember_token

private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
