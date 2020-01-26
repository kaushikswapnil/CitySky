class Building
{
 float m_Height;
 float m_Width;
 PVector m_BasePosition;
 int m_NumWindows;
 
 Building(float bHeight, float bWidth, PVector basePos, int numFlats)
 {
   m_Height = bHeight;
   m_Width = bWidth;
   m_BasePosition = basePos.copy();
   m_NumWindows = numFlats;
 }
 
 void Display(boolean drawWindows)
 {
   PVector topLeftCorner = PVector.sub(m_BasePosition, new PVector(m_Width/2, m_Height));

   rect(topLeftCorner.x, topLeftCorner.y, m_Width, m_Height);
   
   if (drawWindows)
   {
     float xPos = topLeftCorner.x;
     float yPos = topLeftCorner.y;
     
     float windowWidth = m_Width/(2*m_NumWindows + 1);
     
     for (int i = 0; i < m_NumWindows; ++i)
     {
       
     }
   }
 }
}
