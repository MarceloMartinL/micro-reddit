class User < ApplicationRecord
	validates :name, presence: true, length: { maximum: 40 }, uniqueness: { case_sensitive: false }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 50}, format: { with: VALID_EMAIL_REGEX },
	                  uniqueness: { case_sensitive: false }
	has_many :posts
	has_many :comments
end
