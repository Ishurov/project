class AuthorList < ActiveRecord::Base
  belongs_to :author
  belongs_to :book
  
  validates :author, presence: true
  validates :author_id, uniqueness: {scope: [:book_id]}

  accepts_nested_attributes_for :author, allow_destroy: true
end
