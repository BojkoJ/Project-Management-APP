class Task < ApplicationRecord
	enum status: {brand_new: 0, in_process: 1, waiting_for_client: 2, done: 3}
	belongs_to :project
	belongs_to :user
	has_many_attached :files
end