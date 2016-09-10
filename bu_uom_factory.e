class
	BU_UOM_FACTORY

feature -- Access

	uom_by_number (i: INTEGER): BU_UOM
			--
		do
			create Result.make (common_uom.iteration_item (i), common_uom.current_keys [i])
		end

	uom_by_key (a_key: STRING): BU_UOM
			--
		do
			check attached common_uom.at (a_key) as al_item then
				create Result.make (al_item, a_key)
			end
		end

	uom_by_item (a_item: STRING): BU_UOM
			--
		do
			check attached common_uom.has_item (a_item) and then attached common_uom.key_for_iteration as al_key then
				create Result.make (a_item, al_key)
			end
		end

	common_uom: HASH_TABLE [STRING, STRING]
			-- `common_uom' of description and abbreviation
		once
			create Result.make (10)
				-- Generic
			Result.force ("Each", "EA")
				-- Length
			Result.force ("Foot", "FT")
			Result.force ("Inch", "IN")
			Result.force ("Yard", "YD")
			Result.force ("Mile", "MI")
				-- Volume
			Result.force ("Cup", "CUP")
			Result.force ("Pint", "PT")
			Result.force ("Ounce", "OZ")
			Result.force ("Gallon", "GAL")
				-- Weight/Mass
			Result.force ("Pound", "LB")
		end

end
