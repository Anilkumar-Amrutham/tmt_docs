class AnalysisDoc < ApplicationRecord
	belongs_to :user
	validates :us_number, :us_description, :us_analysis, presence: true
end
