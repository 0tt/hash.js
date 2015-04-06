local meta = getmetatable ""
meta.__metatable = FAKE_META

function meta:__call( )

	local f, err = load( self, "string", "t", ENV )

	if err then
		error( err, 2 )
	end

	return f()

end