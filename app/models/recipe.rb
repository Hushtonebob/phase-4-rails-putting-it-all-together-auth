class Recipe < ApplicationRecord
    
    belongs_to :user
    validates :title, presence: true
    validates :instructions, length: {minimum:50}
    
    def change
        create_table :recipes do |t|
            t.string :title
            t.text :instructions
            t.integer :minutes_to_complete
        end
    end

end