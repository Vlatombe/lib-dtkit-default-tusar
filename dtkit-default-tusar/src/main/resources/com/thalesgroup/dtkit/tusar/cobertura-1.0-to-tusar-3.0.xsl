<?xml version="1.0" encoding="UTF-8"?>
<!--
/*******************************************************************************
* Copyright (c) 2009 Thales Corporate Services SAS                             *
* Author : Gregory Boissinot, Guillaume Tanier                                 *
*                                                                              *
* Permission is hereby granted, free of charge, to any person obtaining a copy *
* of this software and associated documentation files (the "Software"), to deal*
* in the Software without restriction, including without limitation the rights *
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell    *
* copies of the Software, and to permit persons to whom the Software is        *
* furnished to do so, subject to the following conditions:                     *
*                                                                              *
* The above copyright notice and this permission notice shall be included in   *
* all copies or substantial portions of the Software.                          *
*                                                                              *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR   *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,     *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE  *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER       *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,*
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN    *
* THE SOFTWARE.                                                                *
*******************************************************************************/
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:coverage="http://www.thalesgroup.com/tusar/coverage/v3"
                xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>


    <xsl:template match="coverage">

        <tusar:tusar
                xmlns:coverage="http://www.thalesgroup.com/tusar/coverage/v3"
                xmlns:tusar="http://www.thalesgroup.com/tusar/v3"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                version="3.0">

            <xsl:element name="tusar:coverage">

                <xsl:attribute name="toolname">cobertura</xsl:attribute>

                <xsl:for-each select="packages/package/classes/class">

                    <xsl:element name="coverage:file">
                        <xsl:attribute name="path">
                            <xsl:value-of select="@filename"/>
                        </xsl:attribute>

                        <xsl:for-each select="lines/line">
                            <xsl:element name="coverage:line">

                                <xsl:attribute name="number">
                                    <xsl:value-of select="@number"/>
                                </xsl:attribute>

                                <xsl:attribute name="hits">
                                    <xsl:value-of select="@hits"/>
                                </xsl:attribute>

                            </xsl:element>
                        </xsl:for-each>
                    </xsl:element>
                </xsl:for-each>
            </xsl:element>
        </tusar:tusar>

    </xsl:template>
</xsl:stylesheet>