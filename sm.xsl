<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match ="/">
    
    <html lang="en">
    <head>
        
        <title>Student Management System</title>
    </head>
    <body background="lightblue">
       
        <style>
            table{
                align-content: center;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-style: italic;
                font-weight: bold;
                border-color: black;
                background-color: aqua;
                size: 0ch;
                padding: auto;
                


                
            }

        </style>
        <h1> Student Managemnt System</h1>
        <div class = "table">
        <table>
            <tr>
            <th align="center" > ID</th>
            <th align="center"> NAME</th>
            <th align="center">COURSE</th>
            <th align="center" >SEMESTER</th>
            <th align= "center">SUB1</th>
            <th align = "center">SUB2</th>
            <th align = "center">SUB3</th>
            <th align = "center">TOTAL</th>
            <th align = "center">AVG</th>
            <th align = "center">GRADE</th>
        </tr>
        <tr> <xsl:for-each select="College/Student">
        <td><xsl:value-of select="Stu-name"></xsl:value-of></td>
        <td><xsl:value-of select="Stu-course"></xsl:value-of></td>
        <td><xsl:value-of select="Stu-sem"></xsl:value-of></td>
        <td><xsl:value-of select="Stu-sub1"></xsl:value-of></td>
        <td><xsl:value-of select="Stu-sub2"></xsl:value-of></td>
        <td><xsl:value-of select="Stu-sub2"></xsl:value-of></td>
        <td><xsl:value-of select="Stu-sub3"></xsl:value-of></td>
        <td><xsl:value-of select="Stu-total"></xsl:value-of></td>
        <td><xsl:value-of select="Stu-avg"></xsl:value-of></td>
        <xsl:choose Stu-avg=">=90"></xsl:choose> >
            <td>Excellent</td>
            <xsl:choose Stu-avg = ">=80"></xsl:choose> 
            <td>Distinction</td>
            <xsl:choose Stu-avg = ">=70"></xsl:choose> 
            <td> First class with Distinction</td>
            <xsl:choose Stu-avg = ">=69"></xsl:choose> 
         <td>First CLass</td>
           
            
           
       
    
       </xsl:for-each>
       </tr>
       

        </table>
        </div>
        
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>
