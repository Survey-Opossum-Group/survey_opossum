class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers, dependent: :destroy

  accepts_nested_attributes_for :answers #reject if required != true

  validates :survey_id, presence: true

end
