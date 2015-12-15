
use <../shapes/spurs/spurs-a.scad>
use <../shapes/throwie-cutout/throwie-cutout.scad>
use <../shapes/trees/christmas/christmas-tree.scad>
use <../shapes/religion/christianity/crucifixion-cross/crucifixion-cross.scad>
use <../shapes/religion/judaism/star-of-david/star-of-david.scad>
use <../shapes/religion/islam/crescent-star/crescent-star.scad>


module coin(innerIcon,
            innerIconXyScale,
            innerIconOffsetY,
            outerIcon,
            outerIconCount,            
            outerIconXyScale,
            radius,
            height)
{
    difference()
    {
        // main disk
        cylinder (h = height, r=radius, center = true, $fn=100);
        
        // inner icon
        translate([0, innerIconOffsetY, -5])
        scale([innerIconXyScale, innerIconXyScale, 6.5])
        coinIcon(innerIcon, height);
        
        // outer icons
        for ( i = [0 : outerIconCount] )
        {
            rotate( i * 360 / (outerIconCount+1), [0, 0, 1])
            translate([0, 43, -5])
            scale([outerIconXyScale, outerIconXyScale, 3.0])
            coinIcon(outerIcon, height);
        }
    }        
}

module coinIcon(iconName, height)
{
    if(iconName == "Cross")
    {
        crucifixionCcross(height);
    }
    else if(iconName == "Throwie")
    {
        throwieCutout(height=height);
    }
    else if(iconName == "Star of David")
    {
        starOfDavid();
    }
    else if(iconName == "Crescent Star")
    {
        crescentStar();
    }
    else
    {
        // defalut
        christmasTree(height);
    }    
}