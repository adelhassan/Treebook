class Status < ActiveRecord::Base


belongs_to :user

validates :content, presence: true,
            :length {minimum: 2}	


validtaes :user_id, presence: true


	

end
