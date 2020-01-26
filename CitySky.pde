float g_BaseLayerMinBuildingWidth = 30.0f;
float g_BaseLayerMinBuildingHeight = 50.0f;
float g_BaseLayerMaxBuildingWidth = 50.0f;
float g_BaseLayerMaxBuildingHeight = 200.0f;

ArrayList<Skyline> g_Skylines;

void setup()
{
  size(800, 800);
  
  g_Skylines = new ArrayList<Skyline>();
  
  g_Skylines.add(new Skyline(1, 3*height/4));
}

void draw()
{
  background(255, 255, 255);
  
  fill(0);
  
  for (Skyline skyline : g_Skylines)
  {
    skyline.Display();
  }
}
