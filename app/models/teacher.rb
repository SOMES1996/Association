class Teacher < ApplicationRecord
	has_and_belongs_to_many :schools
end
