class User < ActiveRecord::Base
    # all the users that I am following
    has_many :follow_following, foreign_key: :follower_id,  class_name: 'Follow'
    has_many :following , through: :follow_following, source: :followee

    # all the users that following me
    has_many :follow_followers, foreign_key: :followee_id, class_name: 'Follow'  
    has_many :followers, through: :follow_followers, source: :follower 
    
    
    def follow_user
        self.following << user
end
