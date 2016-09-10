class
	BU_TYPE_FACTORY

feature -- Access

	address_types: ARRAYED_LIST [BU_TYPE]
			--
		once
			create Result.make (10)
			Result.force (create {BU_TYPE}.make ("Bill-to", "BLTO"))
			Result.force (create {BU_TYPE}.make ("Ship-to", "SHTO"))
			Result.force (create {BU_TYPE}.make ("Remit-to", "RMTO"))
		end

	phone_types: ARRAYED_LIST [BU_TYPE]
			--
		once
			create Result.make (10)
			Result.force (create {BU_TYPE}.make ("Main", "MAIN"))
			Result.force (create {BU_TYPE}.make ("Toll-free", "TFRE"))
			Result.force (create {BU_TYPE}.make ("Fax", "FAX"))
			Result.force (create {BU_TYPE}.make ("Mobile", "MOB"))
			Result.force (create {BU_TYPE}.make ("Cellular", "CELL"))
		end

end
