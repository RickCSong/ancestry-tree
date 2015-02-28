class Api::V1::PeopleController < ApplicationController
  def index
    first_name = params['first_name'] || ''
    last_name = params['last_name'] || ''

    @people = Person.all
                  .where('first_name LIKE ? AND last_name LIKE ?',
                         "%#{first_name}%", "%#{last_name}%")

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

  def create
    person = Person.create first_name: params['first_name'],
                           last_name: params['last_name'],
                           sex: params['sex'],
                           birth_date: params['birth_date'],
                           death_date: params['death_date'],
                           father_id: params['father_id'],
                           mother_id: params['mother_id'],
                           current_spouse_id: params['current_spouse_id']
  end
end
