class Message < ActiveRecord::Base
  belongs_to :user
  
#Same Thing with upper one
  # def user
  # 	Message.find_by_sql("SELECT * FROM users WHERE users.id = #{self.user_id}")
  # end
end
