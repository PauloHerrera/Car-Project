class CreateMontadoras < ActiveRecord::Migration
  def change
    create_table :montadoras do |t|
      t.string :nome
      t.string :descricao
      t.string :site_url
      t.string :imagem

      t.timestamps
    end
  end
end
