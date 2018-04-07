class Comment < ApplicationRecord
	validates :body, presence: true, length: { maximum: 200 }
	validates :user_id, presence: true
	validates :post_id, presence: true
	belongs_to :user
	belongs_to :post
end
