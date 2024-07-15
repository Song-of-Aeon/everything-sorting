global.stuff = [];
function read_csv_please() {
	var file = file_text_open_read("ranking.csv");
	file_text_readln(file);
	file_text_readln(file);
	file_text_readln(file);
	file_text_readln(file);
	var line = file_text_readln(file);
	do {
		log(line);
		var stuff = string_split(line, ",", false);
		var friend = {};
		var z=2;
		friend.name = stuff[0];
		friend.concept = stuff[z++];
		friend.writing = stuff[z++];
		friend.characters = stuff[z++];
		friend.plot = stuff[z++];
		friend.worldbuilding = stuff[z++];
		friend.consistency = stuff[z++];
		friend.best = stuff[z++];
		friend.overall = stuff[z++];
		friend.myrank = stuff[z++];
		friend.SPWRGSPWRB = stuff[z++];
		friend.fumbled = stuff[z++];
		friend.misc = stuff[z++];
		friend.details = "";
		array_push(global.stuff, friend);
		var line = file_text_readln(file);
	} until file_text_eof(file);
	file_text_close(file);
	//load_csv()
}
read_csv_please();
savereviews();