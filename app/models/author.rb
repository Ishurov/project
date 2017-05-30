class Author < ActiveRecord::Base
  has_and_belongs_to_many :books
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :index_of_author, presence: true, uniqueness: true
end
