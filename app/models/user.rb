class User < ActiveRecord::Base
	before_validation :downcase_email

	has_secure_password

	validates :password, presence: true, :length => { :minimum => 6 }
	validates_confirmation_of :email, :password
	validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

	has_many :grocery_lists

	private

	def downcase_email
		self.email = self.email.downcase if self.email.present?
	end
end