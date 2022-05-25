class Student < ApplicationRecord
  include Visible

  belongs_to :teacher
end
