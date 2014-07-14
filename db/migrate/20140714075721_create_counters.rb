class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.integer :challenge_num, null: false
      t.timestamps
    end
  end
end
