class PagesController < ApplicationController

	def about

	end

	def contact

	end

	def mpower

	end

	def home

	end

	def schedule
		
	end

  def thanks

  end

	 def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
