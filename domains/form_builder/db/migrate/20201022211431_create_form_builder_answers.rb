class CreateFormBuilderAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_answers do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.uuid :family_uuid, default: 'gen_random_uuid()', null: false
      t.integer :parent_id
      t.integer :question_id
      t.json :meta
      t.timestamps
    end
  end
end
