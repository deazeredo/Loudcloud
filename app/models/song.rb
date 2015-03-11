
class Song < ActiveRecord::Base
	has_many :like 
	has_many :comment

	validates: title, presence: true
	validates: embed_code, presence: true
end
