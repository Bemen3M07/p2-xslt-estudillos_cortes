<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />

  <!-- Plantilla principal -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Noticias de Productos Sony</title>
        <link rel="stylesheet" type="text/css" href="Sony.css">
      </head>
      
      <body>
        <!-- Banner -->
        <div class="banner">
          <h1>Noticias de Productos Sony</h1>
        </div>
        
        <!-- Contenido principal -->
        <div class="content">
          <!-- Iterar sobre cada item del XML -->
          <xsl:for-each select="Sony/item">
            <div class="item">
              <!-- Imagen del producto -->
              <img src="{imagenes}" alt="{titulo}" />
              
              <!-- Contenido del item: título y descripción -->
              <div class="item-content">
                <div class="item-title">
                  <xsl:value-of select="titulo" />
                </div>
                <div class="item-description">
                  <xsl:value-of select="descripcion" />
                </div>
              </div>
            </div>
          </xsl:for-each>
        </div>
        
        <!-- Footer -->
        <div class="footer">
          <p>&copy; 2024 Sony Corporation - Todos los derechos reservados</p>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>