class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :micropost
	validates :comment, presence: true
end
