class
	BU_PHONE

create
	make

feature {NONE} -- Initialization

	make (a_type: like type)
			--
		do
			type := a_type
		end

feature -- Access

	us_area_code: STRING attribute create Result.make_empty end
	us_exchange: STRING attribute create Result.make_empty end
	us_number: STRING attribute create Result.make_empty end
	formatted_us_number: STRING
		do
			create Result.make_empty
			Result.append_character ('(')
			Result.append_string_general (us_area_code)
			Result.append_character (')')
			Result.append_character (' ')
			Result.append_string_general (us_exchange)
			Result.append_character ('-')
			Result.append_string_general (us_number)
		end

	international_number: STRING attribute create Result.make_empty end

	type: BU_TYPE

feature -- Settings

	set_area_code (a_area_code: attached like us_area_code)
			-- Sets `us_area_code' with `a_area_code'.
		do
			us_area_code := a_area_code
		ensure
			area_code_set: us_area_code = a_area_code
		end

	set_exchange (a_exchange: attached like us_exchange)
			-- Sets `us_exchange' with `a_exchange'.
		do
			us_exchange := a_exchange
		ensure
			exchange_set: us_exchange = a_exchange
		end

	set_number (a_number: attached like us_number)
			-- Sets `us_number' with `a_number'.
		do
			us_number := a_number
		ensure
			number_set: us_number = a_number
		end

	set_type (a_type: attached like type)
			-- Sets `type' with `a_type'.
		do
			type := a_type
		ensure
			type_set: type = a_type
		end

	set_international_number (a_international_number: attached like international_number)
			-- Sets `international_number' with `a_international_number'.
		do
			international_number := a_international_number
		ensure
			international_number_set: international_number = a_international_number
		end

end
