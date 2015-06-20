class TicketsController < ApplicationController
	def index
		@tickets = Ticket.all
	end
	def show
		@ticket = Ticket.find(params[:id])
	
	end
	def new
		@ticket = Ticket.new(issue_id: 'Important')
	end
	def edit
		@ticket = Ticket.find(params[:id])
	end
	def create
		@ticket = Ticket.new(ticket_params)
		@ticket.save
		if @ticket.save
    		redirect_to @ticket, :notice => 'Ticket was successfully created'
 		 else
  		  redirect_to :action=>'new', :notice => 'Ticket couldnot be saved'
 		end
	end
	def update
  		@ticket = Ticket.find(params[:id])
 
 		if @ticket.update(ticket_params)
 	   redirect_to @ticket , :notice => 'Ticket was successfully updated'
 		 else
    		render 'edit'
  		end
	end
	def destroy
		@ticket = Ticket.find(params[:id])
		@ticket.destroy
		redirect_to tickets_path
	end
	private
	def ticket_params
		params.require(:ticket).permit(:name, :issue_id, :issue_description)
	end
end
