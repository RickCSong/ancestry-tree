class Api::V1::PeopleController < ApplicationController
  def index
    @people = Person.all

    respond_to do |format|
      format.json
    end
  end

  def show
    @person = Person.find(params['id'])

    respond_to do |format|
      format.json
    end
  end
end
