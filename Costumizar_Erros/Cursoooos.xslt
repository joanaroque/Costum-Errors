<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

        <table border="1" width="500">
          <tr>
            <!--table row -->
            <td>
              <!--colunas-->
              <b>Curso</b>
            </td>
            <td>
              <b>Regime</b>
            </td>
            <td>
              <b>Nº Horas</b>
            </td>
          </tr>
          <!--por cada formando que exista dentro da turma põe dentro das colunas-->
          <xsl:for-each select ="/cursos/curso">
            <xsl:if test="(position() mod 2 = 0)">

              <tr>
                <td>
                  <xsl:value-of select ="nome"/>
                </td>
                <td>
                  <xsl:value-of select ="regime"/>
                </td>
                <td>
                  <xsl:value-of select ="nHoras"/>
                </td>
              </tr>
            </xsl:if>
            <xsl:if test="(position() mod 2 = 1)">
              <tr  bgcolor="green">
                <td>
                  <xsl:value-of select ="nome"/>
                </td>
                <td>
                  <xsl:value-of select ="regime"/>
                </td>
                <td>
                  <xsl:value-of select ="nHoras"/>
                </td>
              </tr>
            </xsl:if>

          </xsl:for-each>


        </table>
        
    </xsl:template>
</xsl:stylesheet>
