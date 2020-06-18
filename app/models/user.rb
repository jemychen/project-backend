class User < ApplicationRecord
    validates :username, presence: true

    has_many :orders
    has_secure_password

end


