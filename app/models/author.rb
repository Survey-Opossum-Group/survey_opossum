class Author < ActiveRecord::Base
  has_secure_password
  has_many :surveys
  accepts_nested_attributes_for :surveys, reject_if: :all_blank, allow_destroy: true

end
