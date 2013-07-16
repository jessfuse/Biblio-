class Book < ActiveRecord::Base
  attr_accessible :ISBN, :description, :name
end
