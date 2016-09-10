class
	BU_BUSINESS

create
	make

feature {NONE} -- Initialization

	make (a_name: like name; a_addresses: ARRAY [BU_ADDRESS]; a_phones: ARRAY [BU_PHONE])
			--
		do
			name := a_name
			across a_addresses as ic loop addresses.force (ic.item) end
			across a_phones as ic loop phones.force (ic.item) end
		end

feature -- Access

	name: STRING

	addresses: ARRAYED_LIST [BU_ADDRESS]
		attribute
			create Result.make (5)
		end

	phones: ARRAYED_LIST [BU_PHONE]
		attribute
			create Result.make (5)
		end

feature -- Adders

	add_international_address (a_type: BU_TYPE; a_address: STRING_32)
			-- `add_international_address' with `a_type' and `a_address'.
			-- where `a_address' is a single 32-bit string free-formed address.
		local
			l_address: BU_ADDRESS
		do
			create l_address.make (a_type)
			l_address.set_international (a_address)
			add_address (l_address)
		end

	add_us_address_as_string (a_type: BU_TYPE; a_street1, a_street2, a_city, a_state, a_zip: attached like {BU_ADDRESS}.content_type_anchor)
			-- `add_us_address_as_string'.
		local
			l_address: BU_ADDRESS
		do
			create l_address.make (a_type)
			l_address.set_us_street_1 (a_street1)
			l_address.set_us_street_2 (a_street2)
			l_address.set_us_city (a_city)
			l_address.set_us_state (a_state)
			l_address.set_us_zip (a_zip)
			add_address (l_address)
		end

	add_address (a_item: BU_ADDRESS)
			-- `add_address' as `a_item'.
		do
			addresses.force (a_item)
		end

	add_us_phone_as_string (a_type: BU_TYPE; a_area_code, a_exchange, a_number: STRING)
			--
		local
			l_phone: BU_PHONE
		do
			create l_phone.make (a_type)
			l_phone.set_area_code (a_area_code)
			l_phone.set_exchange (a_exchange)
			l_phone.set_number (a_number)
			add_phone (l_phone)
		end

	add_international_phone_as_string (a_type: BU_TYPE; a_number: STRING)
			-- `add_international_phone_as_string' with `a_type' and `a_number'
			-- where `a_number' is a free-form set of values (alphanumerics)
		local
			l_phone: BU_PHONE
		do
			create l_phone.make (a_type)
			l_phone.set_international_number (a_number)
			add_phone (l_phone)
		end

	add_phone (a_item: BU_PHONE)
			-- `add_phone' as `a_item'.
		do
			phones.force (a_item)
		end

end
