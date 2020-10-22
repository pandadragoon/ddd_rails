class CreateFormBuilderFlowForwardTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_flow_forward_targets do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.integer :source_question_id
      t.integer :target_form_id
      t.integer :target_section_id
      t.integer :target_question_id
      t.timestamps
    end
  end
end
