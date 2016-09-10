class
	BU_TYPE

create
	make

feature {NONE} -- Initialization

	make (a_name: like name; a_abbreviation: like abbreviation)
			--
		do
			name := a_name
			abbreviation := a_abbreviation
		end

feature -- Access

	name: STRING

	abbreviation: STRING

end
