class CreateFormBuilderFormTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_form_types do |t|
      t.string :name
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.timestamps
    end
  end
end
