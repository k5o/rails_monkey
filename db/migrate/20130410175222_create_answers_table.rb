class CreateAnswersTable < ActiveRecord::Migration
	def change
		create_table :answers do |t|
			t.references :choice
			t.references :completion
		end
	end
end
