class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.references :survey
      t.timestamps
    end
  end
end
