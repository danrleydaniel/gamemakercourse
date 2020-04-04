////////////////////////////////
// MOVIMENTAÇÃO DOS INIMIGOS //
///////////////////////////////

//CALCULANDO MOVIMENTOS:
vsp = vsp + grv;


//COLISÃO HORIZONTAL:
if (place_meeting(x+hsp,y,oWall)){
	
	while(!place_meeting(x+sign(hsp),y,oWall)){
		
		x = x + sign(hsp);
		
	}
	
	hsp = -hsp;
	
}

x = x + hsp;

//COLISÃO VERTICAL:
if (place_meeting(x,y+vsp,oWall)){
	
	while(!place_meeting(x,y+sign(vsp),oWall)){
		
		y = y + sign(vsp);
		
	}
	
	vsp = 0;
	
}

y = y + vsp;

//ANIMAÇÃO
if(!place_meeting(x,y+1,oWall)){
	
	sprite_index = sEnemyA;
	
	
} else{

	
	if(hsp == 0){
		
		sprite_index = sEnemy;
	
	} else{
		
		sprite_index = sEnemyR;
	
	}

}

if (hsp != 0) image_xscale = sign(hsp);