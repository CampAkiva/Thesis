class Document < ActiveRecord::Base
	belongs_to :user
	belongs_to :room
	has_many :comments

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  	validates_attachment_content_type :avatar, :content_type => "application/pdf"
end
