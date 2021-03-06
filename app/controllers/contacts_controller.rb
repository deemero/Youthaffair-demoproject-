class ContactsController < ApplicationController

  def index
    @contact = Contact.new
  end

  def new
    @contact = Contact.new
  end

  def created
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'connot send message.'
      render :new
    end
  end
end
