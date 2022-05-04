class UserIndex
  include SearchFlip::Index

  def self.index_name
    "users"
  end

  def self.model
    User
  end

  def self.serialize(user)
    {
      id: user.id,
      first_name: user.first_name,
      last_name: user.last_name,
      email: user.email,
      role: user.role,
      created_at: user.created_at
     }
  end
end
