class VisitorsController < ApplicationController#class VisitorsController inherits behaviour from the ApplicationController class in the Rails API.

  def new#defines new method
    @owner = Owner.new#Creates an instatance variable of @owner and assigns an instance of the Owner model.
    flash.now[:notice] = 'Welcome!'
    flash.now[:alert] = 'My birthday is soon!'
  end

end
