class Question < ActiveRecord::Base
  belongs_to :survey
<<<<<<< HEAD
  has_many :answers, dependent: :destroy

  accepts_nested_attributes_for :answers #reject if required != true

=======
  accepts_nested_attributes_for :answers
  
>>>>>>> master
  validates :survey_id, presence: true

end
