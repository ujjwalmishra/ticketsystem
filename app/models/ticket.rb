class Ticket < ActiveRecord::Base
	validates :name, presence: true,
                    length: { minimum: 5 }
    validates :issue_description, presence: true,
                    length: { minimum: 6 }                
end
