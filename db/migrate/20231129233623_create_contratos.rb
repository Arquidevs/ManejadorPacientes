class CreateContratos < ActiveRecord::Migration[7.1]
  def change
    create_table :contratos, id: false do |t|
      t.string :id
      t.string :eps
      t.string :descripcion

      t.timestamps
    end

    execute 'ALTER TABLE contratos ADD PRIMARY KEY (id);'
  end
end
