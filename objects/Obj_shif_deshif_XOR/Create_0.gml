Obj_str.room_now = 6

function shif_XOR(key, txt) {
	
	var len_t = string_length(key)
	var len_k = string_length(txt)
	var result = ""
	
	for (var i = 0; i <= len_t; i++) {
		var ps_t = string_char_at(txt, i)
		var ps_k = string_char_at(key, i mod len_k)
		var ch_t = ord(ps_t)
		var ch_k = ord(ps_k)
		result += chr(ch_t xor ch_k)
	}
	
	return result
}

function deshif_XOR(key, txt) {
return "Доделать надо"
}