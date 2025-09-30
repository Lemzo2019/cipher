Obj_str.room_now = 6


// mod, chr = Превратить в симвл, ord = в код

function shif_XOR(key, txt) {
	var alf = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
	var result = "";
	var len_t = string_length(txt);
	var len_k = string_length(key);

	for (var i = 1; i <= len_t; i++) {
		var i_k = ((i - 1) mod len_k) + 1;
		var let_t = string_char_at(txt, i);
		var let_k = string_char_at(key, i_k);

		var n = ord(let_t) ^ ord(let_k);
		var chunk = "";

		do {
			var p = n mod 64; // 0..63
			chunk = string_char_at(alf, p + 1) + chunk; // prepend
			n = n div 64;
		} until (n == 0);

		result += chunk + " ";
	}

	return result;
}


function deshif_XOR(key, txt) {
	var alf = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
	var result = "";
	var parts = string_split(string_trim(txt), " ");
	var len_k = string_length(key);
	var count = array_length(parts);

	for (var i = 0; i < count; i++) {
		var token = parts[i];
		if (token == "") continue;

		var n = 0;
		var tlen = string_length(token);
		for (var j = 1; j <= tlen; j++) {
			var ch = string_char_at(token, j);
			var pos = string_pos(ch, alf); // 1..64
			if (pos <= 0) continue; // пропускаем неожиданные символы
			var v = pos - 1;
			n = n * 64 + v;
		}

		var i_k = (i mod len_k) + 1;
		var let_k = string_char_at(key, i_k);
		var code = n ^ ord(let_k);
		result += chr(code);
	}

	return result;
}