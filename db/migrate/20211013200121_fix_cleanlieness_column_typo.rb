class FixCleanlienessColumnTypo < ActiveRecord::Migration[6.1]
  def change
    rename_column :restrooms, :cleanlieness, :cleanliness
  end
end
