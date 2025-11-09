draw_self();

switch(escudo)
{
	case 5:
	{
		draw_sprite_ext(spr_escudo,subimage,x,y,2.1,2.1,0,c_white,.70)
		break;
	}
	case 4:
	{
		draw_sprite_ext(spr_escudo,subimage,x,y,1.5,1.5,0,c_white,.60)
		break;
	}
	case 3:
	{
		draw_sprite_ext(spr_escudo,subimage,x,y,1.2,1.2,0,c_white,.40)
		break;
	}
	case 2:
	{
		draw_sprite_ext(spr_escudo,subimage,x,y,1,1,0,c_white,.20)
		break;
	}
	case 1:
	{
		draw_sprite_ext(spr_escudo,subimage,x,y,.60,.60,0,c_white,.10)
		break;
	}
}