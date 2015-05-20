class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.string :issue
      t.integer :options

      t.timestamps null: false
    end
  end
end
