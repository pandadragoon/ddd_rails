class CreateFormBuilderVarianceCriteria < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_variance_criteria do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.integer :variance_id
      t.integer :variance_attr
      t.json :variance_attr_set
      t.json :meta
      t.timestamps
    end
  end
end
