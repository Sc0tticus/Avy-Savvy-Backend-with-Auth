class User < ApplicationRecord
    has_secure_password

    has_many :posts

    #presence:true, A user must put in both a username and password
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :password, presence: true

end
