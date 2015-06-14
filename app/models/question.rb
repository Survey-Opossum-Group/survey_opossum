class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :survey
  accepts_nested_attributes_for :answers
  
  validates :survey_id, presence: true

end
