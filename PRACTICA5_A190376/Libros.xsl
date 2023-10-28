<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">

  <html>
    <head>
    <style type="text/css">
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 20px;
  }

  h1 {
    text-align: center;
    color: #333;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
  }

  th, td {
    border: 1px solid #ddd;
    padding: 12px;
    text-align: left;
  }

  th {
    background-color: #f2f2f2;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #e0e0e0;
  }

  footer {
    text-align: center;
    margin-top: 40px;
    padding: 10px;
    background-color: #f2f2f2;
    position: fixed;
    bottom: 0;
    width: 80%;
  }
</style> 
    </head>
    <body>
    <h1>Obras  literarias/BestSellers</h1>
    <table>
    <tr><th>Titulo</th><th>Autor</th><th>Genero</th><th>Año</th><th>Editorial</th></tr>
    <xsl:for-each select="libros/libro">
    
    <tr>
    
    <td><xsl:value-of select="titulo"/></td>
    <td><xsl:value-of select="autor"/></td>
    <td><xsl:value-of select="genero"/></td>
    <td><xsl:value-of select="año"/></td>
    <td><xsl:value-of select="editorial"/></td>
    
    </tr>
    </xsl:for-each>
    </table>
    </body>  
  </html> 
  </xsl:template>
</xsl:stylesheet>
