class CreateEstadoCuenta < ActiveRecord::Migration[7.1]
  def change
    create_table :estado_cuenta, id:false do |t|
      t.string :id
      t.string :servicio
      t.timestamps
    end

    execute 'ALTER TABLE estado_cuenta ADD PRIMARY KEY (id, servicio);'
  end
end
