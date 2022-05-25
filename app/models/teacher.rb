class Teacher < ApplicationRecord
  include Visible

  has_many :students, dependent: :destroy

  validates :name, presence: true
  validates :subject, presence: true, length: { minimum: 5 }

  
end
