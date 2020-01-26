class Building
{
 float m_Height;
 float m_Width;
 PVector m_BasePosition;
 
 Building(float bHeight, float bWidth, PVector basePos)
 {
   m_Height = bHeight;
   m_Width = bWidth;
   m_BasePosition = basePos.copy();
 }
 
 void Display(boolean drawWindows)
 {
   PVector topLeftCorner = PVector.sub(m_BasePosition, new PVector(m_Width/2, m_Height));

   rect(topLeftCorner.x, topLeftCorner.y, m_Width, m_Height);
 }
}
