class RemoveImagemFromOpicional < ActiveRecord::Migration
  def up
    remove_column :opicionals, :imagem
      end

  def down
    add_column :opicionals, :imagem, :string
  end
end
