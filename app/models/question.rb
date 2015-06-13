class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :survey

  validates :survey_id, presence: true

end
