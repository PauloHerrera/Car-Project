class CreateOpicionals < ActiveRecord::Migration
  def change
    create_table :opicionals do |t|
      t.string :nome
      t.text :descricao
      t.string :imagem

      t.timestamps
    end
  end
end
