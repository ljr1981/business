class
	BU_UOM

create
	make

feature {NONE} -- Initialization

	make (a_description, a_abbreviation: STRING)
			--
		do
			description := a_description
			abbreviation := a_abbreviation
		end

feature -- Access

	description: STRING

	abbreviation: STRING

end
