class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(name: params[:contact][:name],
                           email: params[:contact][:email],
                           content: params[:contact][:content])
    @contact.save
    render "new"
  end
end
