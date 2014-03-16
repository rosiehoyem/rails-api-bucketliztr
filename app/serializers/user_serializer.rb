class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :url
  has_many :list_items

  def url
    user_url(object)
  end
end
