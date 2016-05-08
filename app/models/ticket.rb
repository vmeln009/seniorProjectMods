
=begin
class Ticket < ActiveRecord::Base

    attr_accessible :full_name, :email, :subject, :body
    validates :full_name, :email, :subject, :body, :presence => true
    validates :full_name, :email, :subject, :body => { :minimum => 2}
    validates :email, :uniqueness => true

end
=end