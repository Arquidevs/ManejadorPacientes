class DropTableName < ActiveRecord::Migration[6.0]
  def change
    drop_table :estado_cuenta
  end
end
