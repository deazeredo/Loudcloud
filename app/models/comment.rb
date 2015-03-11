class Comment < ActiveRecord::Base
  belongs_to :song

  validates: song, presence: true
  validates: body, presence: true
end
