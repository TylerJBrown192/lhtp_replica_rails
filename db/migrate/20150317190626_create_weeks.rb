class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.column :name, :string
      t.column :section_id, :integer

      t.timestamps
    end
  end
end
