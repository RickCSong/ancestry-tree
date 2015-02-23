class PeopleController < ApplicationController
  def index
    @people = Person.all

    respond_to do |format|
      format.html { render 'index.json' }
      format.json
    end
  end

  def show
    @person = Person.find(params['id'])

    respond_to do |format|
      format.html { render 'show.json' }
      format.json
    end
  end
end
