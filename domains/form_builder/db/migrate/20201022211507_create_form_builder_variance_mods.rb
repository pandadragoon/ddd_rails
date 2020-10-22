class CreateFormBuilderVarianceMods < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_variance_mods do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.string :key
      t.json :values
      t.integer :variance_id
      t.timestamps
    end
  end
end
