class Book < ActiveRecord::Base
  attr_accessible :isbn, :description, :name, :picture
  mount_uploader :picture, PictureUploader

  belongs_to :user

  after_create :fetch_info

  def fetch_info
    @client ||= Goodreads.new
    book_info = @client.book_by_isbn(isbn)
    
  end
end
