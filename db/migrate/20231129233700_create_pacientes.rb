# db/migrate/20231129233700_create_pacientes.rb
class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes, id:false :string do |t|
      t.string :nombre
      t.string :id
      t.string :email
      t.string :password
      t.string :tipo_id

      t.timestamps
    end
    execute 'ALTER TABLE pacientes ADD PRIMARY KEY (id);'

  end
end
