class CreateInitialTables < ActiveRecord::Migration

	def change
		create_table 	:wolves do |t|
			t.string 		:name, null: false
			t.string		:image, null: false
			t.string		:description, null: false
		end

		create_table 		:howls do |t|
			t.string			:text, null: false
			t.string			:image
			t.integer			:wolf_id
			t.timestamps	:created_on
			t.timestamps	:updated_on
			t.integer			:likes
		end	
	end
end
