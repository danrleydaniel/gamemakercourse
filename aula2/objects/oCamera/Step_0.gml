/// @description Update camera
// You can write your code in this editor

//Atualizar destino:
if(instance_exists(follow)){
	
	xTo = follow.x;
	yTo = follow.y;

}

//Atualizar posição do objeto:
x += (xTo - x) / 25;
y += (yTo - y) / 25;



//Atualizar visão da câmera:
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);