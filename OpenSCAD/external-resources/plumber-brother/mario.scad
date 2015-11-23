
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module mario(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    difference()
    {
       linear_extrude(height=h)
         polygon([[-112.818750,-165.015000],[-105.159844,-180.784531],[-94.567500,-198.238750],[-82.608281,-214.716094],[-76.605645,-221.756699],[-70.848750,-227.555000],[-63.364844,-233.567031],[-54.657500,-239.403750],[-37.018750,-249.265000],[-28.597969,-253.185000],[-18.942500,-256.977500],[-9.075156,-259.851250],[-0.018750,-261.015000],[12.981250,-261.015000],[22.195000,-260.093750],[30.981250,-257.005000],[38.314102,-253.440117],[44.955312,-249.045312],[50.863867,-243.887852],[55.998750,-238.035000],[60.318945,-231.554023],[63.783437,-224.512187],[66.351211,-216.976758],[67.981250,-209.015000],[73.427500,-212.536250],[77.981250,-215.885000],[82.402500,-218.100000],[86.561250,-220.525000],[95.636250,-229.051250],[100.376250,-232.015469],[107.981250,-234.345000],[113.121562,-234.915312],[118.788750,-234.625000],[124.302188,-233.442187],[128.981250,-231.335000],[134.041250,-227.230000],[139.071250,-223.725000],[146.848750,-221.982500],[152.785000,-220.397812],[159.981250,-217.525000],[165.471328,-214.430820],[170.639375,-210.570937],[175.362109,-206.046836],[179.516250,-200.960000],[182.978516,-195.411914],[185.625625,-189.504062],[187.334297,-183.337930],[187.981250,-177.015000],[187.384844,-166.160781],[185.325000,-155.716250],[181.778281,-145.671094],[176.721250,-136.015000],[165.001250,-120.015000],[164.113750,-116.689844],[163.436250,-112.253750],[162.008750,-107.095781],[158.871250,-101.605000],[154.069688,-96.899062],[149.416250,-94.025000],[145.250313,-91.533437],[141.911250,-87.975000],[139.958594,-83.362969],[139.250000,-78.656250],[138.801250,-69.015000],[136.420000,-60.361250],[132.861250,-52.015000],[129.647344,-47.038281],[126.147500,-43.183750],[122.439531,-39.244844],[118.601250,-34.015000],[109.521250,-16.015000],[101.459219,-3.807031],[92.365000,8.321250],[82.713906,20.031406],[72.981250,30.985000],[76.986250,34.753750],[80.991250,38.005000],[84.559844,39.392656],[87.347500,39.956250],[90.954531,41.789219],[96.981250,46.985000],[98.885547,42.841582],[101.646250,39.007656],[105.098828,35.530215],[109.078750,32.456250],[117.962500,27.706719],[126.981250,25.135000],[143.981250,25.135000],[151.642812,26.030625],[159.006250,28.550000],[165.814687,32.396875],[171.811250,37.275000],[175.618750,41.343750],[179.981250,45.465000],[189.052500,52.257500],[193.097344,56.160938],[196.181250,60.985000],[197.497500,65.545781],[198.018750,70.763750],[197.981250,80.985000],[197.571094,86.245664],[196.526250,91.718437],[192.926250,102.870000],[187.968750,113.579062],[182.441250,122.985000],[172.291250,135.985000],[169.881250,143.985000],[165.936719,154.197031],[163.381738,159.310137],[160.345000,164.061250],[156.756543,168.175332],[152.546406,171.377344],[147.644629,173.392246],[141.981250,173.945000],[137.238438,173.191250],[133.768750,171.807500],[130.655312,170.345000],[126.981250,169.355000],[111.981250,169.945000],[103.875156,168.496094],[95.065000,165.066250],[87.212969,160.085781],[84.165684,157.148535],[81.981250,153.985000],[79.981250,153.985000],[75.927813,159.810938],[70.428750,164.495000],[57.981250,171.975000],[45.714687,178.091875],[32.426250,182.780000],[18.665312,185.818125],[4.981250,186.985000],[-12.135000,187.200000],[-20.701094,186.627813],[-29.018750,184.985000],[-30.722500,196.878750],[-32.490781,202.525156],[-35.208750,207.985000],[-39.375000,213.043750],[-41.113594,214.893906],[-42.438750,217.075000],[-44.308750,226.636250],[-46.156875,233.897969],[-49.508750,241.815000],[-51.598398,244.800586],[-54.542813,247.804688],[-62.128750,253.477500],[-70.532188,258.051562],[-78.018750,260.745000],[-85.838750,261.015000],[-94.018750,260.745000],[-102.282188,259.986250],[-109.373750,257.765000],[-116.037813,254.366250],[-123.018750,250.075000],[-128.576250,247.257500],[-133.833750,245.145000],[-138.836250,242.470000],[-143.628750,237.965000],[-146.639531,233.070938],[-148.590000,227.545000],[-149.657344,221.734063],[-150.018750,215.985000],[-149.872656,203.377187],[-148.820000,190.475000],[-146.366719,177.827813],[-144.460449,171.771523],[-142.018750,165.985000],[-149.534941,164.300898],[-157.273906,161.429688],[-164.981230,157.526758],[-172.402500,152.747500],[-179.283301,147.247305],[-185.369219,141.181563],[-190.405840,134.705664],[-194.138750,127.975000],[-196.158281,122.183281],[-197.357500,116.193750],[-198.018750,103.985000],[-197.495059,98.005625],[-196.086719,91.272500],[-193.846582,84.213125],[-190.827500,77.255000],[-187.082324,70.825625],[-182.663906,65.352500],[-177.625098,61.263125],[-172.018750,58.985000],[-171.406895,53.994531],[-170.095781,49.635000],[-168.129590,45.849219],[-165.552500,42.580000],[-162.408691,39.770156],[-158.742344,37.362500],[-150.018750,33.525000],[-139.018750,30.535000],[-125.018750,20.885000],[-101.018750,9.985000],[-108.062500,7.899785],[-115.014375,4.903906],[-121.699063,1.072012],[-127.941250,-3.521250],[-133.565625,-8.801230],[-138.396875,-14.693281],[-142.259688,-21.122754],[-144.978750,-28.015000],[-147.718750,-51.015000],[-155.838750,-65.015000],[-158.952500,-73.263750],[-160.018750,-82.015000],[-160.020000,-89.063750],[-159.098750,-96.015000],[-157.074199,-101.715410],[-154.116719,-107.236406],[-150.355566,-112.442637],[-145.920000,-117.198750],[-140.939277,-121.369395],[-135.542656,-124.819219],[-129.859395,-127.412871],[-124.018750,-129.015000],[-122.597813,-137.224687],[-119.618750,-147.060000],[-112.818750,-165.015000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[52.711250,-213.015000],[49.047500,-221.901250],[46.789531,-225.982031],[43.771250,-230.015000],[38.713750,-234.818750],[32.981250,-238.475000],[29.048750,-241.088750],[24.981250,-243.335000],[20.067500,-244.561250],[14.981250,-245.285000],[2.384063,-246.160781],[-8.336250,-244.866250],[-18.647812,-241.526094],[-30.018750,-236.265000],[-45.928750,-227.555000],[-53.602031,-221.604844],[-61.820000,-213.891250],[-69.507344,-205.624531],[-75.588750,-198.015000],[-82.398750,-187.015000],[-89.268750,-177.015000],[-98.208750,-159.695000],[-106.158750,-142.015000],[-117.018750,-103.015000],[-117.941250,-109.537500],[-117.018750,-116.015000],[-123.288750,-114.855000],[-129.007500,-112.185625],[-134.056875,-108.266562],[-138.318750,-103.357500],[-141.675000,-97.718125],[-144.007500,-91.608125],[-145.198125,-85.287188],[-145.128750,-79.015000],[-144.376250,-74.339531],[-142.993750,-69.856250],[-140.651250,-65.952344],[-137.018750,-63.015000],[-130.305469,-71.001406],[-121.990000,-77.908750],[-117.345996,-80.600645],[-112.438906,-82.594219],[-107.314551,-83.746621],[-102.018750,-83.915000],[-97.488750,-83.137500],[-93.018750,-82.015000],[-82.002500,-101.790000],[-76.215469,-111.312812],[-69.508750,-120.845000],[-62.845000,-128.785000],[-55.581250,-136.207500],[-40.018750,-149.935000],[-25.855000,-160.990000],[-18.054531,-165.735625],[-10.018750,-169.015000],[-11.483281,-173.984375],[-13.387500,-177.630000],[-15.394844,-180.968125],[-17.168750,-185.015000],[-18.006250,-190.443750],[-18.018750,-196.015000],[-17.645000,-201.705000],[-16.483750,-206.502500],[-14.452500,-211.056250],[-11.468750,-216.015000],[-7.135000,-221.610000],[-1.848750,-226.305000],[2.086094,-228.486719],[6.695000,-230.191250],[15.981250,-231.925000],[23.587773,-231.349941],[30.496562,-228.905156],[36.612695,-224.894980],[41.841250,-219.623750],[46.087305,-213.395801],[49.255937,-206.515469],[51.252227,-199.287090],[51.981250,-192.015000],[56.981250,-192.015000],[56.863906,-198.395625],[56.312500,-202.792500],[52.711250,-213.015000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[45.381250,-190.865000],[46.425293,-192.528262],[46.865469,-194.781094],[46.387500,-200.293750],[44.853906,-205.879531],[43.171250,-210.015000],[40.838379,-213.864121],[37.901406,-217.376094],[34.456543,-220.467832],[30.600000,-223.056250],[26.427988,-225.058262],[22.036719,-226.390781],[17.522402,-226.970723],[12.981250,-226.715000],[7.344219,-225.241016],[2.231250,-222.741875],[-2.277969,-219.356797],[-6.103750,-215.225000],[-9.166406,-210.485703],[-11.386250,-205.278125],[-12.683594,-199.741484],[-12.978750,-194.015000],[-12.352031,-189.263281],[-10.837500,-183.181250],[-8.556094,-177.543594],[-7.165605,-175.445996],[-5.628750,-174.125000],[-2.230781,-173.759844],[1.950000,-174.998750],[8.981250,-179.015000],[-0.248750,-182.575000],[-0.978750,-193.015000],[-0.978750,-208.015000],[-0.018750,-217.015000],[15.981250,-206.015000],[17.222969,-210.406406],[19.082500,-215.008750],[21.641406,-219.114219],[24.981250,-222.015000],[35.671250,-204.295000],[41.321250,-195.015000],[38.981250,-189.015000],[42.357500,-189.426250],[45.381250,-190.865000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[144.981250,-129.575000],[148.954063,-131.571875],[152.418750,-134.210000],[158.311250,-140.735000],[164.419375,-150.222812],[169.008750,-161.250000],[170.405781,-167.035586],[171.029375,-172.839687],[170.748281,-178.540195],[169.431250,-184.015000],[165.667344,-191.543281],[160.350000,-197.628750],[153.710781,-202.317344],[145.981250,-205.655000],[133.981250,-208.485000],[128.356094,-211.930937],[122.077500,-215.997500],[118.569824,-217.327773],[114.750781,-217.690313],[110.571035,-216.710820],[105.981250,-214.015000],[112.951094,-211.512187],[119.612500,-208.595000],[125.338281,-204.387812],[127.654316,-201.526836],[129.501250,-198.015000],[130.572500,-194.458125],[130.923750,-191.505000],[131.143750,-188.806875],[131.821250,-186.015000],[134.223281,-180.750000],[135.557500,-178.320000],[135.813594,-175.237500],[134.981250,-168.015000],[141.992656,-166.133281],[147.760000,-165.043750],[153.637969,-165.189844],[160.981250,-167.015000],[159.132051,-163.936270],[156.860156,-161.452031],[154.230371,-159.542715],[151.307500,-158.188750],[144.841719,-157.068594],[137.981250,-157.935000],[132.413750,-159.926250],[129.555000,-160.698281],[126.981250,-160.665000],[124.230000,-159.282031],[120.758750,-156.801250],[113.981250,-151.895000],[107.174375,-148.510313],[98.901250,-145.262500],[90.418125,-142.610938],[82.981250,-141.015000],[83.106562,-135.065781],[84.126250,-130.688750],[85.294336,-129.118223],[87.073438,-127.974844],[92.981250,-127.015000],[98.587187,-126.837656],[103.748750,-126.181250],[108.734062,-124.724219],[113.811250,-122.145000],[130.981250,-109.615000],[135.409219,-109.261250],[139.900000,-110.752500],[143.818906,-113.530000],[146.531250,-117.035000],[147.668750,-120.446250],[147.981250,-124.015000],[139.548906,-123.091094],[131.267500,-123.786250],[127.404004,-124.973887],[123.842969,-126.845781],[120.672637,-129.495098],[117.981250,-133.015000],[124.517500,-130.397656],[131.233750,-128.568750],[138.073750,-128.102969],[144.981250,-129.575000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[116.881250,-199.375000],[110.941250,-202.361719],[103.283750,-204.008750],[95.450000,-204.191406],[88.981250,-202.785000],[85.636250,-200.808750],[82.981250,-198.015000],[108.981250,-195.775000],[121.981250,-192.015000],[119.945000,-196.040000],[116.881250,-199.375000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[20.981250,-187.015000],[9.981250,-195.015000],[10.981250,-179.015000],[31.981250,-186.015000],[25.981250,-200.015000],[20.981250,-187.015000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[70.981250,-188.015000],[62.960312,-187.304688],[53.921250,-185.662500],[36.981250,-181.435000],[22.692187,-177.086562],[8.671250,-171.930000],[-4.944688,-165.805937],[-18.018750,-158.555000],[-30.018750,-150.355000],[-39.397031,-143.611406],[-49.567500,-135.136250],[-58.963594,-125.935469],[-66.018750,-117.015000],[-58.064180,-115.076680],[-49.956563,-114.792813],[-41.783789,-115.865039],[-33.633750,-117.995000],[-17.753438,-124.234688],[-3.018750,-131.125000],[8.981250,-136.365000],[19.981250,-142.905000],[36.981250,-150.795000],[48.981250,-157.645000],[58.981250,-161.825000],[67.981250,-166.555000],[80.981250,-170.725000],[92.365781,-173.834062],[101.677500,-175.760000],[111.141094,-176.740937],[122.981250,-177.015000],[118.455742,-181.330410],[112.710312,-184.393906],[106.072852,-186.411387],[98.871250,-187.588750],[84.087187,-188.246719],[70.981250,-188.015000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[56.981250,-152.235000],[53.751719,-152.056094],[49.880000,-150.691250],[42.981250,-147.265000],[19.981250,-135.265000],[12.617500,-131.672500],[9.115156,-129.586562],[5.981250,-127.015000],[9.767402,-125.187090],[12.996094,-122.265469],[15.690176,-118.504551],[17.872500,-114.158750],[20.793281,-104.730156],[21.941250,-96.015000],[21.583750,-88.817500],[20.338125,-85.476563],[17.851250,-83.045000],[15.764238,-82.298086],[13.798281,-82.332812],[10.305000,-84.180000],[7.522344,-87.452187],[5.601250,-91.015000],[2.417188,-99.419844],[0.491250,-107.763750],[0.215312,-116.233281],[1.981250,-125.015000],[-2.108906,-123.947500],[-5.285000,-122.587500],[-12.018750,-119.245000],[-22.691094,-115.016875],[-35.230000,-111.002500],[-47.913281,-108.551875],[-53.770879,-108.334844],[-59.018750,-109.015000],[-57.648125,-102.849844],[-54.833750,-95.948750],[-51.059375,-89.570781],[-46.808750,-84.975000],[-36.767500,-79.022500],[-34.139707,-76.859961],[-32.041719,-74.335313],[-30.761934,-71.402383],[-30.588750,-68.015000],[-31.564844,-64.735312],[-33.245000,-62.102500],[-37.168750,-57.015000],[-39.216250,-52.145000],[-40.301875,-49.744687],[-42.238750,-47.125000],[-44.663423,-44.980906],[-47.199102,-43.622246],[-49.820151,-42.975706],[-52.500937,-42.967969],[-57.939180,-44.575645],[-63.308750,-47.858750],[-68.404570,-52.230762],[-73.021563,-57.105156],[-79.998750,-66.015000],[-83.387500,-70.483750],[-88.028750,-73.685000],[-95.865684,-76.326914],[-103.689844,-76.814687],[-111.191270,-75.353867],[-118.060000,-72.150000],[-123.986074,-67.408633],[-128.659531,-61.335312],[-131.770410,-54.135586],[-133.008750,-46.015000],[-132.659492,-39.562305],[-131.345313,-33.487188],[-129.116602,-27.857852],[-126.023750,-22.742500],[-122.117148,-18.209336],[-117.447188,-14.326562],[-112.064258,-11.162383],[-106.018750,-8.785000],[-100.377500,-7.533906],[-94.616250,-7.011250],[-83.018750,-7.015000],[-75.977188,-7.792812],[-70.306250,-9.232500],[-65.741562,-10.285937],[-62.018750,-9.905000],[-59.489219,-8.241250],[-56.640000,-5.632500],[-51.598750,-0.445000],[-44.063750,6.168750],[-36.018750,12.055000],[-25.253984,18.041152],[-14.396875,22.815469],[-3.495703,26.142988],[7.401250,27.788750],[18.245703,27.517793],[28.989375,25.095156],[39.583984,20.285879],[49.981250,12.855000],[57.568750,5.827500],[60.334063,2.063438],[62.981250,-3.015000],[58.426875,-1.533125],[55.376250,0.905000],[49.691250,7.945000],[42.743750,14.351250],[34.971250,19.715000],[31.077500,21.481250],[26.981250,22.655000],[20.486836,22.883438],[15.484687,21.246250],[11.781445,18.095937],[9.183750,13.785000],[7.498242,8.665937],[6.531562,3.091250],[5.981250,-8.015000],[3.981250,-28.015000],[-0.585586,-29.161836],[-4.647812,-31.435312],[-8.159258,-34.626133],[-11.073750,-38.525000],[-13.345117,-42.922617],[-14.927188,-47.609687],[-15.773789,-52.376914],[-15.838750,-57.015000],[-15.229688,-61.377031],[-13.831250,-66.433750],[-11.476563,-70.828594],[-9.888477,-72.353887],[-7.998750,-73.205000],[-5.568906,-73.112031],[-2.855000,-72.168750],[1.981250,-69.595000],[11.685000,-64.480000],[21.981250,-60.685000],[30.302500,-58.516094],[35.646250,-57.988750],[39.407500,-58.014531],[42.981250,-57.505000],[45.960156,-56.208750],[48.985000,-54.305000],[54.981250,-50.415000],[59.770000,-48.316875],[65.203750,-46.620000],[70.776250,-45.470625],[75.981250,-45.015000],[88.650000,-45.168750],[95.211719,-45.801094],[100.981250,-47.115000],[106.252363,-49.483633],[110.894531,-52.732813],[114.879746,-56.724961],[118.180000,-61.322500],[120.767285,-66.387852],[122.613594,-71.783437],[123.690918,-77.371680],[123.971250,-83.015000],[123.471797,-87.959688],[122.236875,-92.889375],[120.312891,-97.662500],[117.746250,-102.137500],[114.583359,-106.172813],[110.870625,-109.626875],[106.654453,-112.358125],[101.981250,-114.225000],[97.628437,-114.858906],[91.758750,-115.088750],[80.981250,-115.015000],[74.647754,-114.273535],[69.112656,-112.400156],[64.256543,-109.673887],[59.960000,-106.373750],[52.567969,-99.167969],[45.981250,-93.015000],[47.852969,-99.027969],[50.320000,-103.281250],[52.710156,-106.651406],[54.351250,-110.015000],[54.575156,-112.481719],[54.117500,-115.026250],[52.661250,-120.015000],[51.968750,-126.462500],[51.981250,-133.015000],[52.360156,-136.729219],[53.602500,-140.393750],[56.024219,-142.871406],[57.776074,-143.309785],[59.941250,-143.025000],[62.876270,-141.519609],[64.965781,-139.181250],[67.625000,-133.102500],[69.952344,-126.982500],[71.627012,-124.592578],[73.981250,-123.015000],[72.420469,-130.845937],[68.702500,-139.980000],[66.205371,-144.260508],[63.373906,-147.936562],[60.276426,-150.698086],[56.981250,-152.235000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[1.981250,-126.015000],[2.981250,-125.015000],[2.981250,-126.015000],[1.981250,-126.015000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-69.018750,-110.015000],[-76.647500,-98.086250],[-80.422031,-91.189531],[-82.168750,-86.015000],[-81.904375,-83.155781],[-80.961250,-80.286250],[-78.208750,-75.015000],[-71.085000,-64.470000],[-66.991094,-59.968125],[-62.018750,-55.455000],[-57.326250,-51.832500],[-54.647188,-50.310937],[-52.018750,-49.515000],[-49.403184,-49.601133],[-47.594219,-50.460938],[-46.423457,-51.894023],[-45.722500,-53.700000],[-45.056406,-57.629062],[-44.248750,-60.645000],[-40.148750,-64.627500],[-38.545000,-67.341563],[-38.360000,-69.019570],[-38.778750,-70.965000],[-40.772969,-73.847813],[-43.790000,-75.517500],[-47.836406,-77.678437],[-52.918750,-82.035000],[-56.913438,-87.630313],[-61.056250,-95.327500],[-64.655313,-103.373437],[-67.018750,-110.015000],[-69.018750,-110.015000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[59.981250,-38.915000],[55.726719,-41.292812],[52.517500,-43.665000],[49.790156,-45.752187],[46.981250,-47.275000],[41.601250,-48.021250],[35.981250,-48.055000],[29.443750,-48.907500],[22.981250,-50.405000],[3.981250,-58.775000],[-0.162500,-60.711250],[-2.477656,-61.273906],[-4.418750,-60.885000],[-5.534844,-59.261406],[-5.997500,-56.783750],[-6.008750,-52.015000],[-5.419531,-47.221875],[-3.830000,-43.295000],[-1.079844,-40.073125],[2.991250,-37.395000],[7.490000,-35.593750],[11.381250,-33.455000],[12.416406,-31.776406],[12.852500,-29.911250],[13.191250,-26.015000],[14.706250,-21.366250],[17.511250,-17.355000],[21.340625,-14.543594],[25.691250,-13.238750],[30.319375,-13.132031],[34.981250,-13.915000],[38.792500,-15.072500],[42.401250,-15.735000],[44.865000,-14.896719],[47.006250,-13.573750],[50.490000,-12.406406],[56.981250,-12.035000],[62.694375,-12.941406],[66.258750,-14.838750],[68.934375,-17.079219],[71.981250,-19.015000],[76.057500,-19.243750],[80.981250,-19.015000],[86.648906,-20.720312],[90.255000,-23.882500],[92.224219,-28.360938],[92.981250,-34.015000],[84.635625,-34.122500],[76.188750,-34.710000],[67.888125,-36.175000],[59.981250,-38.915000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-79.058750,-34.015000],[-80.452656,-28.253594],[-83.677500,-23.946250],[-88.332969,-21.005781],[-94.018750,-19.345000],[-99.645000,-19.041250],[-102.002031,-19.956719],[-104.018750,-22.015000],[-98.891250,-22.981406],[-93.666250,-25.021250],[-89.427500,-28.307969],[-88.016641,-30.473105],[-87.258750,-33.015000],[-87.346250,-35.973750],[-88.618750,-38.625000],[-91.650312,-40.930000],[-94.871250,-41.877500],[-98.065938,-43.046250],[-101.018750,-46.015000],[-93.018750,-46.015000],[-98.521406,-51.007969],[-103.462500,-53.731250],[-107.681719,-56.096406],[-109.470527,-57.742051],[-111.018750,-60.015000],[-99.494375,-58.036562],[-93.991172,-56.128477],[-88.993750,-53.495000],[-84.751953,-50.051523],[-81.515625,-45.713437],[-79.534609,-40.396133],[-79.058750,-34.015000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[77.611250,-9.025000],[69.941250,1.985000],[54.981250,20.985000],[58.673125,20.242656],[61.656250,18.376250],[66.981250,12.985000],[77.652500,2.103750],[82.437344,-3.553906],[86.981250,-10.015000],[77.611250,-9.025000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[40.981250,-7.305000],[26.981250,-5.125000],[11.981250,-9.015000],[12.099687,-2.003281],[13.131250,5.978750],[14.306445,9.664199],[16.090313,12.788906],[18.609648,15.085098],[21.991250,16.285000],[26.002793,16.213359],[30.119219,15.003125],[34.196973,12.871328],[38.092500,10.035000],[44.762656,3.116875],[48.981250,-4.015000],[40.981250,-7.305000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-77.018750,2.985000],[-62.018750,3.985000],[-66.018750,-2.015000],[-77.018750,2.985000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-98.018750,52.235000],[-92.747500,56.225000],[-89.883594,57.806563],[-87.018750,58.115000],[-84.274844,56.901250],[-81.275000,54.720000],[-76.018750,50.185000],[-70.243750,46.356250],[-64.018750,43.285000],[-55.090000,38.765000],[-50.790156,36.023125],[-47.128750,32.895000],[-44.687500,29.797500],[-43.985781,27.984375],[-43.978750,26.025000],[-45.149629,23.737109],[-47.394531,21.900625],[-53.935000,19.415000],[-61.257344,18.234375],[-67.018750,18.025000],[-81.569688,19.879844],[-97.656250,24.298750],[-105.461523,27.403809],[-112.674063,31.070781],[-118.968320,35.273301],[-124.018750,39.985000],[-98.018750,52.235000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-36.248750,33.945000],[-39.328809,36.806953],[-43.496719,39.757500],[-53.597500,45.772500],[-63.553906,51.686250],[-67.541348,54.510234],[-70.368750,57.195000],[-74.913750,67.087500],[-79.098750,77.985000],[-79.976250,81.946250],[-79.886250,83.937656],[-79.098750,85.885000],[-77.135469,88.131406],[-74.200000,90.093750],[-68.018750,92.765000],[-59.580313,94.590000],[-51.068750,94.622500],[-42.782188,92.753750],[-35.018750,88.875000],[-31.634785,86.183926],[-28.660156,82.944531],[-23.982500,75.248750],[-21.072969,66.643594],[-20.018750,57.985000],[-20.450938,48.671719],[-22.276250,39.473750],[-23.860742,35.118105],[-25.972813,31.031406],[-28.672227,27.293691],[-32.018750,23.985000],[-33.526250,29.066250],[-34.429062,31.346719],[-36.248750,33.945000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[55.981250,35.985000],[50.212500,30.232500],[47.061406,28.208438],[42.981250,26.985000],[46.940625,33.132813],[51.871250,39.177500],[55.856875,45.375938],[56.896484,48.613086],[56.981250,51.985000],[69.981250,51.985000],[67.253750,47.593594],[63.693750,43.493750],[55.981250,35.985000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[5.981250,37.125000],[1.027344,35.244531],[-6.207500,33.293750],[-19.018750,30.985000],[-17.859219,37.319375],[-16.215000,41.880000],[-14.722656,46.493125],[-14.018750,52.985000],[-14.570703,61.661777],[-16.416875,70.086719],[-19.527734,77.985488],[-23.873750,85.083750],[-29.425391,91.107168],[-36.153125,95.781406],[-44.027422,98.832129],[-53.018750,99.985000],[-61.163906,99.782812],[-67.555000,98.757500],[-73.677969,96.595937],[-81.018750,92.985000],[-77.448750,107.985000],[-76.881250,111.746250],[-76.301250,113.588906],[-75.278750,115.005000],[-64.018750,118.965000],[-57.850000,122.348750],[-52.108750,126.295000],[-47.738750,130.255000],[-40.018750,133.785000],[-34.608125,137.521875],[-31.248750,141.630000],[-29.539375,146.615625],[-29.078750,152.985000],[-29.078750,162.985000],[-28.450313,167.567188],[-27.521680,168.896523],[-26.226250,169.755000],[-22.663437,170.570313],[-18.018750,171.035000],[-10.018750,172.655000],[-2.176250,172.390000],[5.981250,171.405000],[17.008633,169.518184],[27.581562,166.990469],[37.629961,163.672207],[47.083750,159.413750],[55.872852,154.065449],[63.927187,147.477656],[71.176680,139.500723],[77.551250,129.985000],[80.594844,123.948906],[83.945000,115.821250],[86.378281,107.567969],[86.868770,104.008574],[86.671250,101.155000],[85.507500,98.726250],[83.518750,96.440000],[81.001250,93.718750],[78.251250,89.985000],[74.744062,83.285156],[71.808750,75.513750],[69.777187,67.477969],[68.981250,59.985000],[52.981250,59.165000],[41.941250,61.855000],[31.981250,62.985000],[38.204531,68.310625],[42.655000,75.027500],[45.041094,82.723125],[45.368887,86.809062],[45.071250,90.985000],[43.759863,95.906836],[41.425781,100.464687],[38.230371,104.523320],[34.335000,107.947500],[29.901035,110.601992],[25.089844,112.351563],[20.062793,113.060977],[14.981250,112.595000],[9.715000,110.490000],[4.981250,107.305000],[1.447302,104.135647],[-1.324238,100.748926],[-3.377917,97.197468],[-4.758281,93.533906],[-5.677246,86.080996],[-4.437500,78.811250],[-1.395410,72.145723],[3.092656,66.505469],[8.670332,62.311543],[14.981250,59.985000],[14.981250,54.985000],[19.981250,54.985000],[17.941406,49.937344],[14.560000,44.836250],[10.389219,40.344531],[5.981250,37.125000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[16.981250,36.985000],[25.981250,49.985000],[47.981250,45.985000],[36.981250,31.985000],[16.981250,36.985000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[105.121250,70.985000],[105.121250,85.985000],[104.758281,92.400313],[103.875000,95.802500],[102.419844,98.795938],[100.341250,103.985000],[98.101250,112.985000],[96.296250,121.037500],[93.921250,128.985000],[91.961250,133.891250],[91.390000,136.464844],[91.621250,138.985000],[93.502266,142.377891],[96.683125,145.377500],[100.823047,147.936484],[105.581250,150.007500],[115.589375,152.496250],[120.157734,152.819297],[123.981250,152.465000],[128.273809,151.192988],[131.792344,149.413906],[134.673145,147.179434],[137.052500,144.541250],[140.852031,138.260469],[144.281250,130.985000],[149.981250,118.985000],[155.976094,105.686719],[162.405000,89.983750],[164.970996,81.904043],[166.672031,74.031406],[167.183613,66.635254],[166.181250,59.985000],[164.825312,56.677969],[162.901250,53.583750],[157.971250,48.315000],[153.675000,45.263750],[148.981250,42.865000],[145.352344,41.632031],[142.075000,41.108750],[134.981250,41.175000],[127.981250,41.175000],[123.410117,43.004277],[119.282187,45.620469],[115.620664,48.901113],[112.448750,52.723750],[109.789648,56.965918],[107.666563,61.505156],[105.121250,70.985000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-92.188750,68.985000],[-94.394375,65.773125],[-97.376250,62.865000],[-104.018750,58.185000],[-112.399688,53.539688],[-120.283750,50.355000],[-128.535313,48.535313],[-138.018750,47.985000],[-144.096250,48.533906],[-148.741250,50.411250],[-152.025000,54.075469],[-154.018750,59.985000],[-148.018750,60.985000],[-148.018750,63.985000],[-154.161719,64.708281],[-158.897500,66.298750],[-163.196406,68.899844],[-168.028750,72.655000],[-172.286328,76.452734],[-175.695000,80.287500],[-178.338672,84.229141],[-180.301250,88.347500],[-182.518750,97.393750],[-183.018750,107.985000],[-182.202500,115.680000],[-179.638750,122.985000],[-177.227930,127.037637],[-174.154063,131.001094],[-166.533750,138.363750],[-157.810938,144.479531],[-149.018750,148.755000],[-143.691738,150.397363],[-137.767656,151.551406],[-131.538184,152.070059],[-125.295000,151.806250],[-119.329785,150.612910],[-113.934219,148.342969],[-109.399980,144.849355],[-106.018750,139.985000],[-113.018750,138.985000],[-114.424531,141.719375],[-116.180000,142.852500],[-117.989844,142.286875],[-119.558750,139.925000],[-119.996250,137.709687],[-119.758750,135.372500],[-118.218750,130.985000],[-114.542500,124.327500],[-112.153594,120.955625],[-109.838750,118.615000],[-107.098750,117.465469],[-105.048750,118.036250],[-104.123750,119.988906],[-104.758750,122.985000],[-108.018750,128.985000],[-102.018750,128.985000],[-97.940000,128.783750],[-94.018750,127.675000],[-90.238223,124.913750],[-87.615156,121.155000],[-86.031074,116.672500],[-85.367500,111.740000],[-85.505957,106.631250],[-86.327969,101.620000],[-87.715059,96.980000],[-89.548750,92.985000],[-92.495781,88.563906],[-95.972500,84.316250],[-103.018750,75.985000],[-91.018750,79.985000],[-91.033750,74.353750],[-91.364688,71.512344],[-92.188750,68.985000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[77.431250,61.275000],[77.425156,66.240938],[78.800000,72.697500],[82.711250,83.985000],[85.031250,88.592500],[86.772500,90.549375],[88.971250,91.355000],[90.346875,91.068457],[91.371875,90.288906],[92.568750,87.731250],[92.941250,81.985000],[91.730469,75.006094],[88.932500,68.198750],[84.898906,62.034531],[79.981250,56.985000],[78.451250,58.976250],[77.431250,61.275000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[1.061250,85.985000],[1.559238,90.070000],[2.973281,94.012500],[5.183496,97.651250],[8.070000,100.825000],[11.512910,103.372500],[15.392344,105.132500],[19.588418,105.943750],[23.981250,105.645000],[28.882500,103.553750],[32.891250,99.985000],[37.152500,94.987500],[38.692031,92.183125],[39.651250,88.985000],[39.916543,84.226074],[39.062344,79.696719],[37.223535,75.539316],[34.535000,71.896250],[31.131621,68.909902],[27.148281,66.722656],[22.719863,65.476895],[17.981250,65.315000],[14.721914,66.421777],[11.616562,68.107344],[6.213750,72.901250],[2.464687,79.069531],[1.426523,82.473066],[1.061250,85.985000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[168.671250,89.985000],[153.241250,122.985000],[145.671250,139.985000],[136.981250,152.985000],[140.804141,153.204434],[143.988125,151.991719],[146.616172,149.656582],[148.771250,146.508750],[151.994375,139.013906],[154.321250,131.985000],[156.922188,126.230469],[159.821250,122.008750],[163.020312,118.025156],[166.521250,112.985000],[172.746250,100.296250],[177.891250,86.985000],[179.435000,81.321406],[180.093750,75.388750],[179.173750,69.754219],[177.904922,67.225996],[175.981250,64.985000],[168.671250,89.985000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-153.638750,88.985000],[-156.643750,98.757500],[-159.204688,103.663438],[-162.228750,106.805000],[-165.364219,107.629531],[-168.202500,106.763750],[-170.138906,104.463594],[-170.568750,100.985000],[-169.035313,96.277344],[-166.011250,90.736250],[-162.353438,85.579531],[-158.918750,82.025000],[-155.413438,81.717500],[-153.683750,83.052500],[-153.251563,85.613750],[-153.638750,88.985000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-131.598750,98.985000],[-132.636250,103.991719],[-134.213750,109.271250],[-136.841250,113.825156],[-138.708125,115.517988],[-141.028750,116.655000],[-142.983555,116.982188],[-144.687813,116.715000],[-147.268750,114.780000],[-148.619688,111.615000],[-148.588750,107.985000],[-146.710938,103.114688],[-143.421250,98.122500],[-139.332813,93.801562],[-135.058750,90.945000],[-132.058594,91.710469],[-130.925000,93.483750],[-130.993281,95.997656],[-131.598750,98.985000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-65.838750,177.985000],[-63.258750,152.985000],[-61.150156,147.122656],[-59.102500,143.188750],[-58.020469,140.175469],[-58.808750,137.075000],[-62.011250,133.743125],[-66.976250,130.715000],[-72.410000,128.766875],[-77.018750,128.675000],[-81.522500,131.412500],[-86.018750,134.885000],[-90.772500,137.635000],[-92.896719,139.098125],[-94.978750,141.195000],[-99.033750,146.508750],[-104.018750,151.695000],[-108.636250,155.375000],[-112.488750,159.355000],[-115.468750,173.985000],[-117.765000,188.428750],[-119.108750,202.985000],[-120.018750,212.985000],[-119.792500,223.837500],[-118.658906,228.976875],[-116.168750,233.985000],[-111.779707,238.963223],[-106.318281,242.747656],[-100.093027,245.319199],[-93.412500,246.658750],[-86.585254,246.747207],[-79.919844,245.565469],[-73.724824,243.094434],[-68.308750,239.315000],[-64.880664,235.593242],[-62.313437,231.500937],[-60.482617,227.106289],[-59.263750,222.477500],[-58.164063,212.790313],[-58.018750,202.985000],[-52.545625,201.865000],[-49.326250,199.320000],[-47.505625,195.357500],[-46.228750,189.985000],[-43.877500,173.082500],[-43.018750,155.985000],[-43.052500,152.446250],[-43.618750,149.035000],[-45.597656,146.224844],[-48.477500,144.718750],[-51.722969,144.688281],[-54.798750,146.305000],[-56.650781,148.537656],[-57.982500,151.236250],[-59.568750,156.985000],[-61.168750,167.985000],[-63.018750,185.985000],[-65.018750,185.985000],[-65.838750,177.985000]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-122.458750,163.005000],[-124.211250,165.457969],[-126.023750,169.511250],[-128.688750,176.985000],[-132.041563,188.304688],[-133.648750,197.305000],[-134.108438,206.395312],[-134.018750,217.985000],[-133.772969,222.349219],[-132.840000,225.793750],[-130.746406,228.583906],[-127.018750,230.985000],[-127.928594,219.820469],[-127.337500,207.473750],[-125.732031,195.132656],[-123.598750,183.985000],[-120.660000,173.217500],[-119.550156,168.150625],[-119.018750,161.985000],[-120.791250,162.258750],[-122.458750,163.005000]]);
    }
  }
}

mario(3);
