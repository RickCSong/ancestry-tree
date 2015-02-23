class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string    :first_name
      t.string    :last_name
      t.string    :sex, null: false
      t.timestamp :birth_date
      t.timestamp :death_date


      t.integer   :father_id
      t.integer   :mother_id
      t.integer   :current_spouse_id

      t.timestamps null: false
    end
  end
end
