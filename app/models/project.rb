class Project < ActiveRecord::Base
  has_many :tasks, dependent: :destroy

  validates :content, presence: true
end
