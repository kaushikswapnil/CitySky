class Building
{
 float m_Height;
 float m_Width;
 PVector m_BasePosition;
 int m_NumWindows;
 Skyline m_Parent;
 
 Building(Skyline parent, PVector basePos)
 {
   m_Parent = parent;
   m_Height = random(g_BaseLayerMinBuildingHeight, g_BaseLayerMaxBuildingHeight);
   m_Width = random(g_BaseLayerMinBuildingWidth, g_BaseLayerMaxBuildingWidth);
   m_BasePosition = PVector.add(basePos, new PVector(m_Width/2, 0));
   m_NumWindows = 3;
 }
 
 void Display(boolean drawWindows)
 {
   PVector topLeftCorner = PVector.sub(m_BasePosition, new PVector(m_Width/2, m_Height));
   
   fill(0);
   rect(topLeftCorner.x, topLeftCorner.y, m_Width, m_Height);
   
   if (drawWindows)
   {
     pushMatrix();
     float yPos = topLeftCorner.y;
     
     float windowWidth = m_Width/(2*m_NumWindows + 1);
     float floorGap = m_Height/(2*m_NumWindows + 1);
     
     fill(255, 255, 255);
     
     while(yPos < topLeftCorner.y + m_Height - 2*floorGap)
     {
       yPos += floorGap;
       float xPos = topLeftCorner.x;
       for (int i = 0; i < m_NumWindows; ++i)
       {
         xPos += windowWidth;
         rect(xPos, yPos, windowWidth, windowWidth);
         xPos += windowWidth;
       }
     }
     
     popMatrix();
   }
 }
}
