<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />

  <!-- Plantilla principal -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Noticias de Productos Sony</title>
        <style>
          /* Estilos para el diseño de la página */
          body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
          }

          /* Banner y pie de página */
          .banner, .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
          }

          /* Contenedor de los items */
          .content {
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
          }

          /* Estilo de cada item */
          .item {
            display: flex;
            width: 80%;
            background-color: #fff;
            margin-bottom: 20px;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
          }

          /* Imagen a la izquierda */
          .item img {
            width: 120px;
            height: auto;
            margin-right: 20px;
            border-radius: 4px;
          }

          /* Título y descripción a la derecha */
          .item-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
          }

          .item-title {
            font-size: 1.2em;
            color: #333;
            margin: 0 0 10px 0;
          }

          .item-description {
            color: #666;
          }
        </style>
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