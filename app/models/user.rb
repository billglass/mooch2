class User < ActiveRecord::Base
	has_many :events
	has_many :comments

	validates_uniqueness_of :email
	validates_presence_of :name, :email, :password
	has_attached_file :image, :styles =>
		{ :medium => "300x300>", :thumb => "100x100>" },
		:default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/	
end
