class Like < ActiveRecord::Base
  belongs_to :song

  validates: song, presence: true
end
