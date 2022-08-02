class Project < ApplicationRecord
  has_many :college_projects
  has_many :colleges, through: :college_projects
 end
