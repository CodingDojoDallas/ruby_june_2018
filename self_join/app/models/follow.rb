class Follow < ActiveRecord::Base
  belongs_to :follower, required: true, foreign_key: :follower_id, class_name: 'User'
  belongs_to :followee, required: true, foreign_key: :follower_id, class_name: 'User'
end
