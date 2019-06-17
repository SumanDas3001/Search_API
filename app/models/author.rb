class Author < ApplicationRecord

  # Association 
  has_many :books
  
  # validation
  validates_presence_of :name, :author_bio, :academics, :awards, :profile_pic

  has_attached_file :profile_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*\z/
end
