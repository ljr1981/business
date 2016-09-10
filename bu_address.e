class
	BU_ADDRESS

create
	make

feature {NONE} -- Initialization

	make (a_type: like type)
			--
		do
			type := a_type
		end

feature -- Access

	us_street_1: attached like content_type_anchor attribute create Result.make_empty end
	us_street_2: attached like content_type_anchor attribute create Result.make_empty end
	us_city: attached like content_type_anchor attribute create Result.make_empty end
	us_state: attached like content_type_anchor attribute create Result.make_empty end
	us_zip: attached like content_type_anchor attribute create Result.make_empty end
	international: STRING_32 attribute create Result.make_empty end

	type: BU_TYPE

feature -- Anchors

	content_type_anchor: detachable STRING

feature -- Settings

	set_us_street_1 (a_us_street_1: attached like us_street_1)
			-- Sets `us_street_1' with `a_us_street_1'.
		do
			us_street_1 := a_us_street_1
		ensure
			us_street_1_set: us_street_1 = a_us_street_1
		end

	set_us_street_2 (a_us_street_2: attached like us_street_2)
			-- Sets `us_street_2' with `a_us_street_2'.
		do
			us_street_2 := a_us_street_2
		ensure
			us_street_2_set: us_street_2 = a_us_street_2
		end

	set_us_city (a_us_city: attached like us_city)
			-- Sets `us_city' with `a_us_city'.
		do
			us_city := a_us_city
		ensure
			us_city_set: us_city = a_us_city
		end

	set_us_state (a_us_state: attached like us_state)
			-- Sets `us_state' with `a_us_state'.
		do
			us_state := a_us_state
		ensure
			us_state_set: us_state = a_us_state
		end

	set_us_zip (a_us_zip: attached like us_zip)
			-- Sets `us_zip' with `a_us_zip'.
		do
			us_zip := a_us_zip
		ensure
			us_zip_set: us_zip = a_us_zip
		end

	set_international (a_international: attached like international)
			-- Sets `international' with `a_international'.
		do
			international := a_international
		ensure
			international_set: international = a_international
		end

	set_type (a_type: attached like type)
			-- Sets `type' with `a_type'.
		do
			type := a_type
		ensure
			type_set: type = a_type
		end

end
