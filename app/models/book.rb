class Book < ActiveRecord::Base
  attr_accessible :ISBN, :description, :name, :picture
  mount_uploader :picture, PictureUploader

  belongs_to :user

end
