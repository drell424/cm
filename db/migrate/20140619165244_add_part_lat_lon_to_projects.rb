class AddPartLatLonToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :lat_lon, :string
  end
end
