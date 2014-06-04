class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :content, presence: true 

	validates_uniqueness_of :title	

	has_many :comments

	before_save :slug


	def slug
		self.slug = self.title.downcase.gsub(" ","-")
	end


	def to_param
		"#{slug}".parameterize
	end
end
