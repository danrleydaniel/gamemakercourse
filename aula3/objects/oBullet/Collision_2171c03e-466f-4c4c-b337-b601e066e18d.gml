/////////////////////////////////////
// QUANDO A BALA ATINGIR O INIMIGO //
/////////////////////////////////////

with (other){
	
	hp--;
	flash = 3;
	hitfrom = other.direction;
	
}

instance_destroy();