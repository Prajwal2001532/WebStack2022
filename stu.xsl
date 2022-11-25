<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match ="/">
     <html>
         <head>
             <body>
                 <h1>Stuent Managemaent System</h1>
                 <table border ='2'>
                     <tr>
                        
                         <th>ID</th>
                         <th>Name</th>
                         <th>Course</th>
                         <th>SEMESTER</th>
                         <th>SUB1</th>
                         <th>SUB2</th>
                         <th>SUB3</th>
                         <th>TOTAL</th>
                         <th>AVG</th>
                         <th>GRADE</th>
                     </tr>
                     <xsl:for-each select="College/student">
                     <tr>
                         <td><xsl:value-of select="SID"/></td>
                         <td><xsl:value-of select="Sname"/></td>
                         <td><xsl:value-of select="Scourse"/></td>
                         <td><xsl:value-of select="Ssem"/></td>
                         <td><xsl:value-of select="sub1"/></td>
                         <td><xsl:value-of select="sub2"/></td>
                         <td><xsl:value-of select="sub3"/></td>
                         <td><xsl:value-of select="Total"/></td>
                         <td><xsl:value-of select="Average"/></td>
                         <td><xsl:choose>
                              <xsl:when test="Average >= 90">
                                  Excellent

                              </xsl:when>
                              <xsl:when test="Average >= 80">
                                  Distinction

                              </xsl:when>
                              <xsl:otherwise>
                                  First class
                              </xsl:otherwise>
                         </xsl:choose></td>
                     </tr>

                     </xsl:for-each>

                 </table>
             </body>
         </head>
     </html>

   </xsl:template>
</xsl:stylesheet>