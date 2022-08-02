class College < ApplicationRecord
	has_many :college_projects
	has_many :projects, through: :college_projects
end
