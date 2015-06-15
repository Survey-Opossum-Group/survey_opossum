class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers, dependent: :destroy

  accepts_nested_attributes_for :answers 

  validates :survey_id, :value, presence: true
  validates :number, uniqueness: true

end
