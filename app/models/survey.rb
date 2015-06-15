class Survey < ActiveRecord::Base
  belongs_to :author

  has_many :questions, dependent: :destroy

  accepts_nested_attributes_for :questions, :reject_if => proc { |a| a['question_text'].blank? &&
        a['question_type'].blank? && a['description'].blank? }, :allow_destroy => true

  validates :name, :author_id, presence: true

end
