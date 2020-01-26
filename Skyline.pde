class Skyline
{
  ArrayList<Building> m_Buildings;
  int m_Depth;
  float m_HeightOffset;
  
  Skyline(int depth, float heightOffset)
  {
    m_Depth = depth;
    m_HeightOffset = heightOffset;
    GenerateBuildings();
  }
  
  void Display()
  {
     boolean drawWindows = false;
     for(Building building : m_Buildings)
     {
        building.Display(drawWindows); 
     }
  }
  
  void GenerateBuildings()
  {
    m_Buildings = new ArrayList<Building>();
    
    float minBuildingWidth = g_BaseLayerMinBuildingWidth/m_Depth;
    float maxBuildingWidth = g_BaseLayerMaxBuildingWidth/m_Depth;
    float minBuildingHeight = g_BaseLayerMinBuildingHeight/m_Depth;
    float maxBuildingHeight = g_BaseLayerMaxBuildingHeight/m_Depth;
    
    float xPos = 0.0f;
    
    while(xPos < width)
    {
      float buildingWidth = min(random(minBuildingWidth, maxBuildingWidth), (width-xPos));
      xPos += buildingWidth/2;
      
      float buildingHeight = random(minBuildingHeight, maxBuildingHeight);
      PVector buildingPos = new PVector(xPos, m_HeightOffset);
      
      m_Buildings.add(new Building(buildingHeight, buildingWidth, buildingPos));
      xPos += buildingWidth/2;
    }
  }
}
