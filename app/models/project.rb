class Project < ApplicationRecord
	 validates :nazev, presence: true
	 has_many :tasks, dependent: :restrict_with_exception
end
