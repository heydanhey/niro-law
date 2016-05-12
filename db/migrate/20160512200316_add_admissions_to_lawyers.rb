class AddAdmissionsToLawyers < ActiveRecord::Migration
  def change
    add_column :lawyers, :admissions, :text
  end
end
