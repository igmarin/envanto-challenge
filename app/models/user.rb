# frozen_string_literal: true

class User < ApplicationRecord
  VALID_REGEX_DOMAIN = /\b[A-Z0-9._%a-z\-]+@+envato.com\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, format: {
    with: VALID_REGEX_DOMAIN, message: 'invalid account email domain'
  }
end
