///starsGeneration()
var i,j,t,kx,ky;

i = global.ecran_parcouru/3;
j = i+1;
repeat(j)
    {        
     
     switch choose(1, 2, 3, 4)
    {
    case 1:
        ky=-32;
        kx=random(1280);
        break;
    case 2:
        ky=752;
        kx=random(1280);
        break;
    case 3:
        ky=random(720);
        kx=-32;
       break;
    case 4:
        ky=random(720);
        kx=1312;
       break;
    }
         
        kamikaze[i]=instance_create(kx, ky, obj_kamikaze01);
        with (kamikaze[i])
        {
            speed=2;
            direction=point_direction(x,y,obj_starship.x,obj_starship.y);
            image_angle=direction-90;
            /*
            if(random(100)<50)
            {
                image_blend = bleu;
            }
            else
            {
                image_blend = rouge;
            }
            */            
        }
        i -= 1;
    }
