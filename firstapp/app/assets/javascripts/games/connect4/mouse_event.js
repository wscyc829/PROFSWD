function updateMouseCoords(event) {
    mouse_x = event.clientX - margin_left;
    mouse_y = event.clientY - margin_top;
}

function mouseOnClicked(event) {
    var x = event.clientX - margin_left;
    var y = event.clientY - margin_top;
	
	if(winner == 0 && x >= 0 && x <= canvas_width && y >= 0 && y <= canvas_height && player_turn == 1){
		cln = Math.floor(x / box_size);
		
		if(!isColumnFull(board, cln)){
			drop(board, player_turn, cln);
			isTurnDone = true;
		}
	}
	else if(winner > 0){
		init();
	}
}