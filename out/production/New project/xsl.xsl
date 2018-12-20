<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>

                <h1>Top children's video about Xmath toys</h1>

                <xsl:apply-templates select="//user"/>

            </body>
        </html>
    </xsl:template>

<xsl:template match="user">

    <h2><xsl:value-of select="@name"/></h2>

    <xsl:apply-templates select="./video"/>

</xsl:template>

<xsl:template match="video">

    <a><h3>Video name: <xsl:value-of select="@title"/></h3>
        Views: <xsl:value-of select="@views"/>
        Likes: <xsl:value-of select="@likes"/>
        Comments: <xsl:value-of select="@comments"/></a>

</xsl:template>

</xsl:stylesheet>