class User < ApplicationRecord

    has_many :recipes
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true

    def change
        create_table :users do |t|
            t.string :username
            t.string :password_digest
            t.string :image_url
            t.string :bio
        end
    end

end