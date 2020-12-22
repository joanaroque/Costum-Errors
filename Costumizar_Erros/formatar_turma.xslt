<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>
  <!--vais começar a ainterpertar os dados a partir da raiz (dos formandos neste caso)-->
    <xsl:template match="/">

      <table border="1" width="500">
        <tr><!--table row -->
          <td><!--colunas-->
            <b>Nome</b>
          </td>
          <td>
            <b>Morada</b>
          </td>
        <td>
            <b>Idade</b>
          </td>
        </tr>
        <!--por cada formando que exista dentro da turma põe dentro das colunas-->
        <xsl:for-each select ="/turma/formando">
          <xsl:if test="(position() mod 2 = 0)">
            
           <tr>
            <td>
              <xsl:value-of select ="nome"/>
            </td>
            <td>
              <xsl:value-of select ="morada"/>
            </td>
           <td>
              <xsl:value-of select ="idade"/>
            </td>
          </tr>
          </xsl:if>
           <xsl:if test="(position() mod 2 = 1)">
           <tr  bgcolor="green">
            <td>
              <xsl:value-of select ="nome"/>
            </td>
            <td>
              <xsl:value-of select ="morada"/>
            </td>
           <td>
              <xsl:value-of select ="idade"/>
            </td>
          </tr>
          </xsl:if>
         
        </xsl:for-each>         
                    
                    
      </table>
       
    </xsl:template>
</xsl:stylesheet>
