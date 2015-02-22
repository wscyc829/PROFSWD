function Sprite(img, x, y, dx, dy, width, height){
	this.img = img;
	this.x = x;
	this.y = y;
	this.dx = dx;
	this.dy = dy;
	this.width = width;
	this.height = height;
	
	this.Draw = function (context) {
		context.drawImage(this.img, this.x, this.y, this.width, this.height);
	}
}