class Author < ActiveRecord::Base
  has_many :author_lists, dependent: :destroy
  has_many :books, through: :author_lists
  
  validates  :first_name, :last_name, :index, presence: true
end
