///starsGeneration()
var i,t,bleu,rouge;

//col_aleatoire = make_colour_hsv(130, 200-random(100), random(255));

//random_set_seed(777);
bleu = make_colour_hsv(130, 200-random(100), random(255));
rouge = make_colour_hsv(0, 200-random(100), 220);

i = 5;

repeat(6)
    {
    t=random(5)/10;
    stars[i]=instance_create(280+random(room_width-560), random(room_height)-room_height, obj_star);
        with (stars[i])
        {
            image_xscale=t;
            image_yscale=t;
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
