class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :survey

  validates_presence_of :survey
  validates :survey_id, presence: true

end
