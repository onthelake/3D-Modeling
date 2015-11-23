
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module cat(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-89.303594,-104.629248],[-85.166094,-99.396748],[-82.764531,-97.935498],[-79.093594,-97.689248],[-73.093594,-98.369248],[-68.013594,-97.617998],[-65.480156,-97.394717],[-63.263594,-97.819248],[-59.814844,-100.871748],[-56.793594,-104.629248],[-50.784844,-111.007998],[-44.093594,-116.629248],[-42.441094,-105.601748],[-42.093594,-93.629248],[-43.143594,-78.629248],[-42.223594,-62.629248],[-41.788750,-58.176279],[-40.267344,-55.385498],[-34.553594,-49.619248],[-28.923594,-43.099248],[-25.092051,-40.151104],[-20.623125,-37.536592],[-10.392344,-32.887998],[0.530312,-28.312529],[10.906406,-22.969248],[19.912305,-16.495576],[27.339219,-9.343623],[33.410977,-1.556982],[38.351406,6.820752],[42.384336,15.745986],[45.733594,25.175127],[51.276406,45.370752],[54.823906,61.462002],[55.672344,69.984346],[54.906406,77.320752],[62.417656,78.348252],[66.107187,78.198252],[69.906406,77.320752],[74.808086,74.786826],[78.637969,71.183096],[81.452070,66.746631],[83.306406,61.714502],[84.256992,56.323779],[84.359844,50.811533],[83.670977,45.414834],[82.246406,40.370752],[78.707656,33.798096],[73.751406,27.209502],[68.622656,20.701533],[64.566406,14.370752],[62.782500,10.057783],[61.627656,5.599502],[60.916406,-3.629248],[61.565508,-10.284189],[63.193594,-17.100029],[65.771836,-23.759541],[69.271406,-29.945498],[73.663477,-35.340674],[78.919219,-39.627842],[85.009805,-42.489775],[91.906406,-43.609248],[95.427656,-43.562998],[98.866406,-43.059248],[101.152480,-42.035400],[102.940625,-40.559092],[105.022656,-36.640498],[105.111563,-32.086279],[103.206406,-27.679248],[100.696758,-25.168994],[97.396094,-23.109092],[89.716406,-19.370498],[85.984727,-17.206885],[82.756719,-14.523779],[80.356055,-11.078721],[79.106406,-6.629248],[79.120020,-3.430732],[79.783437,-0.235498],[82.520156,6.038252],[89.856406,17.370752],[93.929844,24.436221],[97.071406,31.662002],[99.117969,39.242158],[99.906406,47.370752],[99.805156,57.912002],[97.986406,68.370752],[95.456406,75.547002],[92.146406,82.370752],[86.956406,89.436846],[80.573906,95.369502],[73.167656,99.927783],[64.906406,102.870752],[55.353906,104.250752],[48.906406,104.580752],[39.906406,107.040752],[21.906406,108.660752],[12.209687,110.591064],[1.587656,113.288252],[-8.875000,115.576689],[-18.093594,116.280752],[-23.837813,115.457314],[-27.447344,113.983252],[-34.093594,109.930752],[-47.093594,105.370752],[-48.464844,109.924502],[-49.598125,111.902783],[-51.313594,113.720752],[-54.457051,115.659678],[-58.360000,116.977158],[-62.707559,117.629248],[-67.184844,117.572002],[-71.476973,116.761475],[-75.269063,115.153721],[-78.246230,112.704795],[-80.093594,109.370752],[-84.093594,109.370752],[-87.971406,109.297002],[-92.286094,108.683252],[-95.869531,106.918252],[-97.021992,105.413018],[-97.553594,103.390752],[-97.271699,101.220811],[-96.198438,99.561221],[-92.517344,97.129502],[-88.189375,94.808408],[-86.307520,93.287100],[-84.893594,91.310752],[-82.320781,83.058877],[-79.828594,70.723252],[-78.011406,58.196377],[-77.463594,49.370752],[-78.103906,42.263564],[-79.346094,35.533252],[-81.274531,28.971689],[-83.973594,22.370752],[-91.236094,8.637002],[-94.669531,1.674971],[-97.313594,-5.629248],[-98.282188,-10.995029],[-98.814844,-17.467998],[-99.093594,-29.629248],[-100.036719,-39.220029],[-102.093594,-48.275498],[-104.150469,-57.257842],[-105.093594,-66.629248],[-104.814844,-73.019092],[-104.183594,-77.382998],[-103.183594,-83.629248],[-103.848750,-89.460654],[-104.912344,-96.492998],[-105.111563,-105.593467],[-103.183594,-117.629248],[-95.853594,-111.579248],[-89.303594,-104.629248]]);
  }
}

cat(4);
