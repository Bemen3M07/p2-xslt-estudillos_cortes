<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="formulario/titulo"/></title>
                <style>
                    /* Estilos generales */
                    * {
                        margin: 0;
                        padding: 0;
                    }
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #fff;
                    }
                    .banner, .footer {
                        background-color: #333;
                        color: #fff;
                        text-align: center;
                        padding: 20px 0;
                    }
                    .content {
                        padding: 20px;
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                    }
                    form {
                        width: 80%;
                        background-color: #fff;
                        margin-bottom: 20px;
                        padding: 20px;
                        border-radius: 8px;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                        display: flex;
                        flex-direction: column;
                    }
                    label {
                        font-size: 1.2em;
                        color: #333;
                        margin-bottom: 10px;
                    }
                    input[type="text"],
                    input[type="email"],
                    input[type="password"] {
                        width: 100%;
                        padding: 10px;
                        margin-bottom: 15px;
                        border: 1px solid #ddd;
                        border-radius: 4px;
                        box-sizing: border-box;
                    }
                    input[type="submit"] {
                        padding: 10px;
                        background-color: #333;
                        border: none;
                        border-radius: 4px;
                        color: white;
                        font-weight: bold;
                        cursor: pointer;
                    }
                    input[type="submit"]:hover {
                        background-color: #555;
                    }
                    .footer {
                        font-size: 0.9em;
                        color: #ccc;
                    }
                </style>
            </head>
            <body>
                <div class="banner">
                    <h1><xsl:value-of select="formulario/titulo"/></h1>
                </div>
                <div class="content">
                    <form action="Formulario.php" method="post">
                        <xsl:for-each select="formulario/campo">
                            <label><xsl:value-of select="etiqueta"/></label>
                            <input type="{tipo}" name="{nombre}"/>
                        </xsl:for-each>
                        <input type="submit" value="{formulario/boton}"/>
                        <button type="button" onclick="window.location.href='sony.xml'">Regresar</button>

                    </form>
                </div>
                <div class="footer">
                    <p>Formulario de Registro</p>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
