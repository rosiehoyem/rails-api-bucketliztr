class User < ActiveRecord::Base
  has_many :list_items
  validates_presence_of :username, :email

end
