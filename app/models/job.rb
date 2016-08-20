class Job < ActiveRecord::Base
  belongs_to :user
  has_many :job_quotes
  validates_formatting_of :location, using: :us_zip
end
