class CreateStatNonPatAdults < ActiveRecord::Migration
  def change
    create_table :stat_non_pat_adults do |t|
      t.decimal :mean, :precision => 5, :scale => 2
      t.decimal :sd, :precision => 5, :scale => 2
      t.decimal :min, :precision => 5, :scale => 2
      t.decimal :max, :precision => 5, :scale => 2
      t.integer :freq
      t.decimal :median, :precision => 5, :scale => 2
      t.decimal :mode, :precision => 5, :scale => 2
      t.decimal :sk, :precision => 5, :scale => 2
      t.decimal :ku, :precision => 5, :scale => 2
      t.string :variable

      t.timestamps
    end
  end
end
