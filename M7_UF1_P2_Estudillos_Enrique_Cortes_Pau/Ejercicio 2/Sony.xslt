<?xml version="1.0" encoding="UTF-8"?>
<!-- Definición de la hoja de estilo XSLT y declaración del espacio de nombres XSL -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Configura la salida en formato HTML y codificación UTF-8 -->
  <xsl:output method="html" encoding="UTF-8" />

  <!-- Plantilla principal: define el diseño de la página HTML -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Noticias de Productos Sony</title>
        <style>
            /* Estilos generales para la página HTML */
            *{
              margin: 0;
              padding: 0;
            }  
            body {
              font-family: Arial, sans-serif;
              margin: 0;
              padding: 0;
              background-color: #fff;
            }

            /* Estilos para la cabecera y el pie de página */
            .banner, .footer {
              background-color: #333;
              color: #fff;
              text-align: center;
              padding: 20px 0;
            }

            /* Estilos para el contenido principal */
            .content {
              padding: 20px;
              display: flex;
              flex-direction: column;
              align-items: center;
            }

            /* Estilos para cada item de producto */
            .item {
              display: flex;
              width: 80%;
              background-color: #fff;
              margin-bottom: 20px;
              padding: 15px;
              border-radius: 8px;
              box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            /* Estilo de imagen del producto */
            .item img {
              width: 120px;
              height: auto;
              margin-right: 20px;
              border-radius: 4px;
            }

            /* Contenedor y estilo del título y descripción del producto */
            .item-content {
              display: flex;
              flex-direction: column;
              justify-content: center;
            }

            /* Estilo del título del producto */
            .item-title {
              font-size: 1.2em;
              color: #333;
              margin: 0 0 10px 0;
            }

            /* Estilo de la descripción del producto */
            .item-description {
              color: #666;
            }
        </style>
      </head>
      
      <body>
        <!-- Banner de encabezado de la página -->
        <div class="banner">
          <h1>Noticias de Productos Sony</h1>
          <!-- Boton para ir al formulario -->
          <button type="button" onclick="window.location.href='Formulario.xml'">Formulario</button>
        </div>
        
        <!-- Contenedor principal de los productos -->
        <div class="content">
          <!-- Bucle que recorre cada elemento <item> en el archivo XML -->
          <xsl:for-each select="Sony/item">
            <div class="item">
              <!-- Muestra la imagen del producto con la URL especificada en <imagenes> -->
              <img src="{imagenes}" alt="{titulo}" />
              
              <!-- Contenedor del título y descripción del producto -->
              <div class="item-content">
                <!-- Título del producto extraído de <titulo> -->
                <div class="item-title">
                  <xsl:value-of select="titulo" />
                </div>
                <!-- Descripción del producto extraída de <descripcion> -->
                <div class="item-description">
                  <xsl:value-of select="descripcion" />
                </div>
              </div>
            </div>
          </xsl:for-each>
        </div>
        
        <!-- Pie de página -->
        <div class="footer">
          <p>2024 Sony Corporation - Todos los derechos reservados</p>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>