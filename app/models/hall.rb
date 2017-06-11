class Hall < ActiveRecord::Base
  has_many :stillages, dependent: :destroy
  
  validates :full_name, :short_name, presence: true
  validates :full_name, uniqueness: {scope: [:short_name]}
end
