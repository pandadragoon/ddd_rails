class CreateFormBuilderVariances < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_variances do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.integer :target_type
      t.uuid :target_uuid
      t.integer :owner
      t.string :variance_type
      t.timestamps
    end
  end
end
