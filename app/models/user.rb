class User < ApplicationRecord
	has_many :analysis_docs
	validates :forename, :surname, :email, presence: true
	validates :email, uniqueness: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)*[^@.\s]+\z/ }
end
