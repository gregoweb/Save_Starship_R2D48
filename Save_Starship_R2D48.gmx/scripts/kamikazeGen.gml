///starsGeneration()
var i,j,t,kx,ky,maxWave;

if(1)
{
    i = global.ecran_parcouru/20;
    
    //min ennemi
    if (i<1) i=1
    
    //nombre max d ennemi par vague
    if(global.infini) 
    {
        maxWave=obj_starship.nbTower+i/4
    }
    else
    {
        if(global.monTimer=1000) 
        {
            maxWave=obj_starship.nbTower+i/3
        }
        else
        {
            maxWave=obj_starship.nbTower+i/2
        }
    }
    
    if(i>maxWave) i=maxWave

     
    j = i;
    repeat(j)
    {        
         
         switch choose(1, 2, 3, 4)
        {
        case 1:
            ky=-32;
            kx=random(room_width-140)+140;
            break;
        case 2:
            ky=752;
            kx=random(room_width-140)+140;
            break;
        case 3:
            ky=random(720);
            kx=108;
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
        }
        i -= 1;
    }
    
}


