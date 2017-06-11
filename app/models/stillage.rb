class Stillage < ActiveRecord::Base
  belongs_to :hall
  has_many :books, dependent: :destroy
  validates :index, :hall, presence: true

  accepts_nested_attributes_for :hall, allow_destroy: true
end
