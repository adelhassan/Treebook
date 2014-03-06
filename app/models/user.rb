class User < ActiveRecord::Base

	def full_name

		first_name + " " + last_name

	end

	has_many :statuses
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
