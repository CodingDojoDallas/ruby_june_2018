class User < ActiveRecord::Base
  has_secure_password

  before_update :skip_password_attribute
  before_save :email_lowercase, :name_cap

  has_many :likes
  has_many :posts
  has_many :posts_liked, through: :likes, source: :posts

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :alias,  presence: true, length: { minimum:2 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :password, presence: true, length: { minimum:8 }, on: :create



  def email_lowercase
    email.downcase!
  end
  def name_cap
    name.capitalize!

  end
  def skip_password_attribute
    if :password.blank? && :password_confirmation.blank?
     params.except!(:password, :password_confirmation)
    end
  end
end
