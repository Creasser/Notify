class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true, presence: true, length: {in: 2..20}
    scope :all_exept, ->(user) {where.not(id: user)}
end
