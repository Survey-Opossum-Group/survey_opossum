class Survey < ActiveRecord::Base
  belongs_to :author
  has_many :questions
  validates :name, :author_id, :description, presence: true
end
