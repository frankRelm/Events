class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :username, :role, :email, :created_at

  attribute :created_date do |user|
    user.created_at && user.created_at.strftime('%m/%d/%Y')
  end
end