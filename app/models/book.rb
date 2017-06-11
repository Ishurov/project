class Book < ActiveRecord::Base
  belongs_to :stillage
  has_many :author_lists, dependent: :destroy
  has_many :authors, through: :author_lists
  
  validates :name, :isbn, :publishing_year, :stillage_id, :shelf, :copies, presence: true
  validates :isbn, uniqueness: true 

  accepts_nested_attributes_for :author_lists, allow_destroy: true
  accepts_nested_attributes_for :authors, allow_destroy: true

  def self.search(params)
    result = Book.includes(:authors).includes(:stillage => :hall).references(:authors).references(:stillage => :hall)
    if params['name'].present?
      result = result.where(name: params['name'])
    end
    if params['isbn'].present?
      result = result.where(isbn: params['isbn'])
    end
    if params['publishing_year'].present?
      result = result.where(publishing_year: params['publishing_year'])
    end
    if params['copies'].present?
      result = result.where(copies: params['copies'])
    end
    if params['stillage'].present?
      result = result.where(stillage: params['stillage'])
    end
    if params['full_name'].present?
      result = result.where(halls: {full_name: params['full_name']})
    end
    if params['short_name'].present?
      result = result.where(halls: {short_name: params['short_name']})
    end
    if params['index'].present?
      result = result.where(authors: {index: params['index']})
    end
    if params['first_name'].present?
      result = result.where(authors: {first_name: params['first_name']})
    end
    if params['second_name'].present?
      result = result.where(authors: {second_name: params['second_name']})
    end
    if params['last_name'].present?
      result = result.where(authors: {last_name: params['last_name']})
    end
    result.all
  end
end
