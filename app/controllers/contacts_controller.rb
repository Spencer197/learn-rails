class ContactsController < ApplicationController

  def new#Define 'new' method. Instantiates an empty Contact model & assign it to @contact instance variable to render app/views/contacts/new.html.erb view.
    @contact = Contact.new
  end

  def create#Define 'create' method.  Renders the app/views/contacts/new.html.erb view.
    @contact = Contact.new(secure_params)
    if @contact.valid?
      # TODO send message
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end

end
