class Survey < ActiveRecord::Base
  belongs_to :author

  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

  validates :name, :author_id, :description, presence: true

end
