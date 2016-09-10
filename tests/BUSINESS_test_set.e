note
	description: "Tests of {BUSINESS}."
	testing: "type/manual"

class
	BUSINESS_TEST_SET

inherit
	EQA_TEST_SET
		rename
			assert as assert_old
		end

	EQA_COMMONLY_USED_ASSERTIONS
		undefine
			default_create
		end

	TEST_SET_BRIDGE
		undefine
			default_create
		end

feature -- Test routines

	BUSINESS_tests
			-- `BUSINESS_tests'
		local
			l_address: BU_ADDRESS
			l_business: BU_BUSINESS
			l_phone: BU_PHONE
			l_type: BU_TYPE
			l_uom: BU_UOM
		do
			do_nothing -- yet ...
		end

end
