<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

      <table border="1" width="500">
        <tr>   
          <td>          
            <b>Nome</b>
          </td>
          <td>
            <b>Plataforma</b>
          </td>
          <td>
            <b>Preço</b>
          </td>
          <td>
            <b>Fotos</b>
          </td>
        </tr>
     
      <xsl:for-each select ="/games/game">
        <tr>
          <td>
            <xsl:value-of select ="nome"/>
          </td>
          <td>
            <xsl:value-of select ="plataforma"/>
          </td>
          <td>
            <xsl:value-of select ="preco"/>
          </td>
          <td>
            <a href="{link}" target="_blank">
              <img src="{foto}" width="190" height="100"/>
            </a>
          </td>
        </tr>
      </xsl:for-each>
      </table>
      <br> </br>
      Total: <xsl:value-of select ="count(/games/game)"/> jogos.
    </xsl:template>
</xsl:stylesheet>
