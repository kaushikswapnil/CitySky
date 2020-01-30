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
     boolean drawWindows = true;
     for(Building building : m_Buildings)
     {
        building.Display(drawWindows); 
     }
  }
  
  void GenerateBuildings()
  {
    m_Buildings = new ArrayList<Building>();
    
    float xPos = 0.0f;
    
    while(xPos < width)
    {
      PVector buildingPos = new PVector(xPos, m_HeightOffset);
      
      Building toAdd = new Building(this, buildingPos);
      m_Buildings.add(toAdd);
      xPos += toAdd.m_Width;
    }
  }
}
