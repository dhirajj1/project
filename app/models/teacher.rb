class Teacher < ApplicationRecord
  

  has_many :students

  validates :name, presence: true
  validates :subject, presence: true, length: { minimum: 5 }

  
end
