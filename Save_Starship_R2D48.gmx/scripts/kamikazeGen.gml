///starsGeneration()
var i,j,t,kx,ky,maxWave,proba;
/*
//probability to gener a wave

if(global.ecran_parcouru <= 200) proba=50
if(global.ecran_parcouru <= 100) proba=75
if(global.ecran_parcouru <= 40) proba=100
if(global.ecran_parcouru > 200) proba=global.ecran_parcouru/5
//if(global.ecran_parcouru > 200) proba=global.ecran_parcouru/10
*/

if(1)
{
    i = global.ecran_parcouru/20;
    
    //min ennemi
    if (i<1) i=1
    //nombre max d ennemi par vague   
    maxWave=obj_starship.nbTower+i/3
    if(i>maxWave) i=maxWave

     
    j = i;
    repeat(j)
    {        
         
         switch choose(1, 2, 3, 4)
        {
        case 1:
            ky=-32;
            kx=random(720)+280;
            break;
        case 2:
            ky=752;
            kx=random(720)+280;
            break;
        case 3:
            ky=random(720);
            kx=280;
           break;
        case 4:
            ky=random(720);
            kx=1000;
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
    
}


