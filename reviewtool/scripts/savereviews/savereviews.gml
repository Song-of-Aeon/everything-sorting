function savereviews() {
	var filename = "reviews.aeon";
	if file_exists(filename) {
		file_rename(filename, $"reviews_backup_{current_month}-{current_day}-{current_year}_num{irandom(999999)}");
	}
	var file = file_text_open_write(filename);
	file_text_write_string(file, json_stringify(global.stuff));
	file_text_close(file);
}

function loadreviews() {
	var filename = "reviews.aeon";
	if !file_exists(filename) exit;
	file_text_open_read(filename);
	var str = file_text_read_string(file);
	global.stuff = json_parse(str);
	file_text_close(file);
}