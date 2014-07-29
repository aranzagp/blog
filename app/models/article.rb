class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy#If you delete an article 
	      #then its associated comments will also need to be deleted
	validates :title, presence: true,
                    length: { minimum: 5 }
end
