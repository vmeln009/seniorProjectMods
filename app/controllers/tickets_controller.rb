require 'rest_client'
require 'json'
class TicketsController < ApplicationController
  def new

  end

  def create
    #pulls this information from the submit ticket form
    @fullname = params[:full_name]
    @email = params[:email]
    @subject = params[:subject]
    @body = params[:body]
    
    #Calls the private function create_ticket to make an API call to create a ticket on ZenDesk
    @ticket = create_ticket
    
  end

  def show
    @displayTicket = display_ticket
    

    
  end
  
  
  private 
  
  def create_ticket
  # create zendesk client
  @schoolTag = "SDA"
  zendesk = RestClient::Resource.new "https://5ive2.zendesk.com/api/v2/", {
  :user => "vm5ive@yahoo.com", :password => "blank1234"
  }
  # create payload to send to zendesk
  payload = {"ticket"=>{"subject"=>@schoolTag+": "+params[:subject], "comment"=>{"body"=>params[:body]}, "tags"=>[@schoolTag]}}.to_json
  # create ticket
  zendesk["tickets.json"].post(payload, {:content_type => :json}) 
  # also, parse and create ruby hash object
  #ticketReturn contains all the information of the ticket created on ZenDesk, including timestamps, etc.
  #JSON.parse(zendesk["tickets.json"].post(payload, {:content_type => :json}))
  end
  
  private
  
  def display_ticket
  # create zendesk client
  zendesk = RestClient::Resource.new "https://5ive2.zendesk.com/api/v2", {
  :user => "vm5ive@yahoo.com", :password => "blank1234"
  }
  
  JSON.parse(zendesk["tickets.json"].get())
  
  
  
  end
  
end


