<?xml version="1.0" encoding="UTF-8"?>
<!--
Copyright (c) 2009 Falko Menge

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
-->
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:wapama="http://www.wapama.net/diagram/"
    xmlns:raziel="http://raziel.org/"
    >

    <xsl:output method="xml" indent="yes" encoding="UTF-8"
        doctype-public="-//W3C//DTD XHTML 1.1 plus MathML 2.0 plus SVG 1.1//EN"
        doctype-system="http://www.w3.org/2002/04/xhtml-math-svg/xhtml-math-svg.dtd"
        cdata-section-elements="script style"
    />

    <!-- Suppress text output by default for all modes. -->
    <xsl:template match="text()|@*" mode="#all"/>

    <!-- Root Node -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Documentation generated out of a BPMN Model</title>
                <style type="text/css">
                    <xsl:call-template name="css"/>
                </style>
                <xsl:call-template name="javascript"/>
            </head>
            <body onload="onLoad();">
                <div class="page">
                    <h1><img src="editor/client/images/HPDTRP_logo.jpg" title="HPI - Stanford Design Thinking Research Program" /></h1>
                    <xsl:apply-templates select="//rdf:Description">
                        <xsl:sort select="wapama:type"/>
                        <xsl:sort select="wapama:name"/>
                    </xsl:apply-templates>
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- Processes -->
    <xsl:template match="rdf:Description [ wapama:type = 'http://b3mn.org/stencilset/bpmn1.1#BPMNDiagram' ]">
        <div id="{substring-after(@rdf:about, '#')}" class="screen" style="display: block;">
            <script type="text/javascript">
                <xsl:text><![CDATA[
                    function onLoad() {
                        stack.push(']]></xsl:text>
                <xsl:value-of select="substring-after(@rdf:about, '#')"/>
                <xsl:text><![CDATA[');
                        var allDivs = document.getElementsByTagName('div');
                        for (var i = 0; i < allDivs.length; i++) {
                            if (allDivs[i].getAttribute('class') == 'screen' && allDivs[i].getAttribute('id') != ']]></xsl:text>
                <xsl:value-of select="substring-after(@rdf:about, '#')"/>
                <xsl:text><![CDATA[') {
                                allDivs[i].style.display = 'none';
                            }
                        }
                    }
                ]]></xsl:text>
            </script>
            <xsl:call-template name="description"/>
            <xsl:call-template name="box">
                <xsl:with-param name="cssId" select="'interaction'"/>
                <xsl:with-param name="content">
                    <h2>Interactions</h2>
                    <p>
<!--
                        <object type="image/svg+xml" data="../../design-thinking/interaction-diagrams/dot.svg" class="intercationdiagram" />
-->
<!-- Generated by Graphviz version 2.18 (Wed Aug &#160;6 10:29:47 UTC 2008)
     For user: (falko) Falko -->
<!-- Title: Test&#45;Case3 2009&#45;05&#45;05 13&#45;08&#45;02.812 Pages: 1 -->
<svg width="394pt" height="182pt"
 viewBox="0.00 0.00 394.00 182.00" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<g id="graph0" class="graph" transform="scale(1 1) rotate(0) translate(4 178)">
<title>Test&#45;Case3 2009&#45;05&#45;05 13&#45;08&#45;02.812</title>
<polygon style="fill:white;stroke:white;" points="-4,4 -4,-178 390,-178 390,4 -4,4"/>
<!-- http://localhost:8180/backend/poem/model/205/self#wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C -->
<g id="node1" class="node"><title>http://localhost:8180/backend/poem/model/205/self#wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C</title>
<a xlink:href="javascript:jumpToScreen(this, &#39;wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C&#39;)" xlink:title="Author">
<image xlink:href="human.png" width="26px" height="54px" preserveAspectRatio="xMinYMin meet" x="26" y="-119"/>
<polygon style="fill:none;stroke:black;stroke-width:2;" points="78,-131 1.93248e-14,-131 5.29438e-15,-53 78,-53 78,-131"/>
<text text-anchor="middle" x="39" y="-60.9" style="font-family:Verdana;font-size:14.00;">Author</text>
</a>
</g>
<!-- http://localhost:8180/backend/poem/model/205/self#wapama_C6DF5A68&#45;6719&#45;47E5&#45;BD8D&#45;FA2DBD0C229F -->
<g id="node2" class="node"><title>http://localhost:8180/backend/poem/model/205/self#wapama_C6DF5A68&#45;6719&#45;47E5&#45;BD8D&#45;FA2DBD0C229F</title>
<a xlink:href="javascript:jumpToScreen(this, &#39;wapama_C6DF5A68&#45;6719&#45;47E5&#45;BD8D&#45;FA2DBD0C229F&#39;);" xlink:title="Reviewer">
<image xlink:href="human.png" width="26px" height="54px" preserveAspectRatio="xMinYMin meet" x="180" y="-162"/>
<polygon style="fill:none;stroke:black;stroke-width:2;" points="233,-174.5 153,-174.5 153,-95.5 233,-95.5 233,-174.5"/>
<text text-anchor="middle" x="193" y="-103.9" style="font-family:Verdana;font-size:14.00;">Reviewer</text>
</a>
</g>
<!-- http://localhost:8180/backend/poem/model/205/self#wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C&#45;&gt;http://localhost:8180/backend/poem/model/205/self#wapama_C6DF5A68&#45;6719&#45;47E5&#45;BD8D&#45;FA2DBD0C229F -->
<g id="edge2" class="edge"><title>http://localhost:8180/backend/poem/model/205/self#wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C&#45;&gt;http://localhost:8180/backend/poem/model/205/self#wapama_C6DF5A68&#45;6719&#45;47E5&#45;BD8D&#45;FA2DBD0C229F</title>
<path style="fill:none;stroke:black;" d="M78,-97C98,-101 122,-108 142,-115"/>
<polygon style="fill:black;stroke:black;" points="141.416,-118.479 152,-118 143.427,-111.774 141.416,-118.479"/>
</g>
<!-- http://localhost:8180/backend/poem/model/205/self#wapama_3D2DFFCA&#45;C894&#45;4D2D&#45;A092&#45;5FDA22D63049 -->
<g id="node3" class="node"><title>http://localhost:8180/backend/poem/model/205/self#wapama_3D2DFFCA&#45;C894&#45;4D2D&#45;A092&#45;5FDA22D63049</title>
<a xlink:href="javascript:jumpToScreen(this, &#39;wapama_3D2DFFCA&#45;C894&#45;4D2D&#45;A092&#45;5FDA22D63049&#39;);" xlink:title="Publisher">
<image xlink:href="human.png" width="26px" height="54px" preserveAspectRatio="xMinYMin meet" x="180" y="-66"/>
<polygon style="fill:none;stroke:black;stroke-width:2;" points="234,-78.5 152,-78.5 152,0.5 234,0.5 234,-78.5"/>
<text text-anchor="middle" x="193" y="-7.9" style="font-family:Verdana;font-size:14.00;">Publisher</text>
</a>
</g>
<!-- http://localhost:8180/backend/poem/model/205/self#wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C&#45;&gt;http://localhost:8180/backend/poem/model/205/self#wapama_3D2DFFCA&#45;C894&#45;4D2D&#45;A092&#45;5FDA22D63049 -->
<g id="edge6" class="edge"><title>http://localhost:8180/backend/poem/model/205/self#wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C&#45;&gt;http://localhost:8180/backend/poem/model/205/self#wapama_3D2DFFCA&#45;C894&#45;4D2D&#45;A092&#45;5FDA22D63049</title>
<path style="fill:none;stroke:black;" d="M78,-73C98,-65 121,-57 142,-50"/>
<polygon style="fill:black;stroke:black;" points="143.427,-53.2259 152,-47 141.416,-46.5212 143.427,-53.2259"/>
</g>
<!-- http://localhost:8180/backend/poem/model/205/self#wapama_C6DF5A68&#45;6719&#45;47E5&#45;BD8D&#45;FA2DBD0C229F&#45;&gt;http://localhost:8180/backend/poem/model/205/self#wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C -->
<g id="edge4" class="edge"><title>http://localhost:8180/backend/poem/model/205/self#wapama_C6DF5A68&#45;6719&#45;47E5&#45;BD8D&#45;FA2DBD0C229F&#45;&gt;http://localhost:8180/backend/poem/model/205/self#wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C</title>
<path style="fill:none;stroke:black;" d="M152,-130C133,-125 109,-118 88,-112"/>
<polygon style="fill:black;stroke:black;" points="88.584,-108.521 78,-109 86.5725,-115.226 88.584,-108.521"/>
</g>
<!-- http://localhost:8180/backend/poem/model/205/self#wapama_3D2DFFCA&#45;C894&#45;4D2D&#45;A092&#45;5FDA22D63049&#45;&gt;http://localhost:8180/backend/poem/model/205/self#wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C -->
<g id="edge10" class="edge"><title>http://localhost:8180/backend/poem/model/205/self#wapama_3D2DFFCA&#45;C894&#45;4D2D&#45;A092&#45;5FDA22D63049&#45;&gt;http://localhost:8180/backend/poem/model/205/self#wapama_F15AEAF4&#45;3AB2&#45;4107&#45;91A9&#45;CDB909AE175C</title>
<path style="fill:none;stroke:black;" d="M152,-59C132,-67 109,-75 88,-81"/>
<polygon style="fill:black;stroke:black;" points="86.5725,-77.7741 78,-84 88.584,-84.4788 86.5725,-77.7741"/>
</g>
<!-- http://localhost:8180/backend/poem/model/205/self#wapama_86583DCA&#45;1B77&#45;48CB&#45;85BA&#45;2FF5030F5E07 -->
<g id="node4" class="node"><title>http://localhost:8180/backend/poem/model/205/self#wapama_86583DCA&#45;1B77&#45;48CB&#45;85BA&#45;2FF5030F5E07</title>
<a xlink:href="javascript:jumpToScreen(this, &#39;wapama_86583DCA&#45;1B77&#45;48CB&#45;85BA&#45;2FF5030F5E07&#39;);" xlink:title="Admin">
<image xlink:href="human.png" width="26px" height="54px" preserveAspectRatio="xMinYMin meet" x="334" y="-66"/>
<polygon style="fill:none;stroke:black;stroke-width:2;" points="386,-78 308,-78 308,-1.93248e-14 386,1.72085e-15 386,-78"/>
<text text-anchor="middle" x="347" y="-7.9" style="font-family:Verdana;font-size:14.00;">Admin</text>
</a>
</g>
<!-- http://localhost:8180/backend/poem/model/205/self#wapama_3D2DFFCA&#45;C894&#45;4D2D&#45;A092&#45;5FDA22D63049&#45;&gt;http://localhost:8180/backend/poem/model/205/self#wapama_86583DCA&#45;1B77&#45;48CB&#45;85BA&#45;2FF5030F5E07 -->
<g id="edge8" class="edge"><title>http://localhost:8180/backend/poem/model/205/self#wapama_3D2DFFCA&#45;C894&#45;4D2D&#45;A092&#45;5FDA22D63049&#45;&gt;http://localhost:8180/backend/poem/model/205/self#wapama_86583DCA&#45;1B77&#45;48CB&#45;85BA&#45;2FF5030F5E07</title>
<path style="fill:none;stroke:black;" d="M234,-39C254,-39 277,-39 298,-39"/>
<polygon style="fill:black;stroke:black;" points="298,-42.5001 308,-39 298,-35.5001 298,-42.5001"/>
</g>
</g>
</svg>
                    </p>
                </xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="box">
                <xsl:with-param name="cssId" select="'role'"/>
                <xsl:with-param name="content">
                    <h2>Roles</h2>
                    <p>
                        <xsl:for-each select="
                            //rdf:Description [
                                wapama:type = 'http://b3mn.org/stencilset/bpmn1.1#Lane'
                            ]
                        ">
                            <xsl:sort select="wapama:name"/>
                            <xsl:call-template name="linklist"/>
                        </xsl:for-each>
                    </p>
                </xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="box">
                <xsl:with-param name="cssId" select="'activity'"/>
                <xsl:with-param name="content">
                    <h2>Activities</h2>
                    <p>
                        <xsl:for-each select="
                            //rdf:Description [
                                wapama:type = 'http://b3mn.org/stencilset/bpmn1.1#Task'
                            ]
                        ">
                            <xsl:sort select="wapama:name"/>
                            <xsl:call-template name="linklist"/>
                        </xsl:for-each>
                    </p>
                </xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="box">
                <xsl:with-param name="cssId" select="'artefact'"/>
                <xsl:with-param name="content">
                    <h2>Artefacts</h2>
                    <p>
                        <xsl:for-each select="
                            //rdf:Description [
                                wapama:type = 'http://b3mn.org/stencilset/bpmn1.1#DataObject'
                            ]
                        ">
                            <xsl:sort select="wapama:name"/>
                            <xsl:call-template name="linklist"/>
                        </xsl:for-each>
                    </p>
                </xsl:with-param>
            </xsl:call-template>
        </div>
    </xsl:template>

    <!-- Roles -->
    <xsl:template match="rdf:Description[ wapama:type = 'http://b3mn.org/stencilset/bpmn1.1#Lane' ]">
        <div id="{substring-after(@rdf:about, '#')}" class="screen">
            <xsl:call-template name="box">
                <xsl:with-param name="cssId" select="'role'"/>
                <xsl:with-param name="content">
                    <xsl:call-template name="description">
                        <xsl:with-param name="type" select="'Role'"/>
                    </xsl:call-template>
                    <p>
                    <strong>Conducted Activities:</strong><br/>
                    <xsl:for-each select="
                        //rdf:Description [
                            wapama:type = 'http://b3mn.org/stencilset/bpmn1.1#Task'
                            and
                            raziel:parent/@rdf:resource = current()/@rdf:about
                        ]
                    ">
                        <xsl:call-template name="linklist"/>
                    </xsl:for-each>
                    </p>
                </xsl:with-param>
            </xsl:call-template>
            <p><a href="" onclick="goBack(this); return false;">back</a></p>
        </div>
    </xsl:template>

    <!-- Activities -->
    <xsl:template match="rdf:Description[ wapama:type = 'http://b3mn.org/stencilset/bpmn1.1#Task' ]">
        <div id="{substring-after(@rdf:about, '#')}" class="screen">
            <xsl:call-template name="box">
                <xsl:with-param name="cssId" select="'activity'"/>
                <xsl:with-param name="content">
                    <xsl:call-template name="description">
                        <xsl:with-param name="type" select="'Activity'"/>
                    </xsl:call-template>
                </xsl:with-param>
            </xsl:call-template>
            <p><a href="" onclick="goBack(this); return false;">back</a></p>
        </div>
    </xsl:template>

    <!-- Artefacts -->
    <xsl:template match="rdf:Description[ wapama:type = 'http://b3mn.org/stencilset/bpmn1.1#DataObject' ]">
        <div id="{substring-after(@rdf:about, '#')}" class="screen">
            <xsl:call-template name="box">
                <xsl:with-param name="cssId" select="'artefact'"/>
                <xsl:with-param name="content">
                    <xsl:call-template name="description">
                        <xsl:with-param name="type" select="'Artefact'"/>
                    </xsl:call-template>
                </xsl:with-param>
            </xsl:call-template>
            <p><a href="" onclick="goBack(this); return false;">back</a></p>
        </div>
    </xsl:template>

    <!-- named template for rendering common properties of BPMN elements -->
    <xsl:template name="description">
        <xsl:param name="type"/>
        <a name="{substring-after(@rdf:about, '#')}">
            <xsl:if test="string-length(wapama:name) &gt; 0">
                <h1>
                    <xsl:if test="string-length($type) &gt; 0">
                        <xsl:value-of select="$type"/>
                        <xsl:text>: </xsl:text>
                    </xsl:if>
                    <xsl:value-of select="wapama:name"/>
                </h1>
            </xsl:if>
        </a>
        <xsl:if test="string-length(wapama:documentation) &gt; 0">
            <p><xsl:value-of select="wapama:documentation"/></p>
        </xsl:if>
        <xsl:if test="string-length(wapama:refuri) &gt; 0">
            <p>
                <a href="{wapama:refuri}" target="_blank"><xsl:text>Detailed Description</xsl:text>
                    <xsl:if test="string-length(wapama:name) &gt; 0">
                        <xsl:text> of the </xsl:text>
                        <xsl:value-of select="$type"/>
                        <xsl:text> '</xsl:text>
                        <xsl:value-of select="wapama:name" />
                        <xsl:text>'</xsl:text>
                    </xsl:if>
                </a>
            </p>
        </xsl:if>
    </xsl:template>

    <!-- named template for rendering common properties of BPMN elements -->
    <xsl:template name="linklist">
        <a href="#{substring-after(@rdf:about, '#')}" onclick="jumpToScreen(this, '{substring-after(@rdf:about, '#')}'); return false;">
            <xsl:value-of select="wapama:name" />
        </a>
        <br />
    </xsl:template>

    <!-- named template for rendering a box with round corners -->
    <xsl:template name="box">
        <xsl:param name="content"/>
        <xsl:param name="cssId"/>
        <div class="xsnazzy">
        <b class="xb1"></b><b class="xb2"></b><b class="xb3"></b><b class="xb4" id="{$cssId}"></b><b class="xb5" id="{$cssId}"></b><b class="xb6" id="{$cssId}"></b><b class="xb7" id="{$cssId}"></b>
        <div class="xboxcontent" id="{$cssId}">
        <xsl:copy-of select="$content"/>
        <div style="clear:left;"></div>
        </div>
        <b class="xb7" id="{$cssId}"></b><b class="xb6" id="{$cssId}"></b><b class="xb5" id="{$cssId}"></b><b class="xb4" id="{$cssId}"></b><b class="xb3"></b><b class="xb2"></b><b class="xb1"></b>
        </div>
    </xsl:template>

    <!-- named template containing the JavaScript code for the output -->
    <xsl:template name="javascript">
        <script type="text/javascript">
        <xsl:text><![CDATA[
            var stack = new Array();

            function jumpToScreen(currentElement, targetScreenId) {
                // hide current screen
                var currentScreenId = stack.pop();
                var currentScreen = returnObjById(currentScreenId); //findParentNodeByClass('screen', currentElement)
                currentScreen.style.display = 'none';
                stack.push(currentScreen.getAttribute('id')); // put it back

                // show next screen
                stack.push(targetScreenId); // put new screen's id on the stack, so that we know where we are
                returnObjById(targetScreenId).style.display = 'block';
            }

            function goBack(currentElement) {
                // hide current screen
                returnObjById(stack.pop()).style.display = 'none';

                // show previous screen
                currentScreenId = stack.pop();
                currentScreen = returnObjById(currentScreenId); //findParentNodeByClass('screen', currentElement)
                currentScreen.style.display = 'block';
                stack.push(currentScreen.getAttribute('id')); // put it back
            }

            // helper functions

            function findParentNodeByClass(parentClass, childObj) {
                var testObj = childObj.parentNode;
                var count = 1;
                while (testObj && testObj.getAttribute('class') != parentClass) {
                    testObj = testObj.parentNode;
                    count++;
                }
                return testObj;
            }

            function returnObjById( id )
            {
                if (document.getElementById)
                    var returnVar = document.getElementById(id);
                else if (document.all)
                    var returnVar = document.all[id];
                else if (document.layers)
                    var returnVar = document.layers[id];
                return returnVar;
            }
        ]]></xsl:text>
        </script>
    </xsl:template>

    <!-- named template containing the cascading stylesheet for the output -->
    <xsl:template name="css">
      <xsl:text><![CDATA[
         body {
            font-size: 75%;
            font-family: sans-serif;
         }
         .page {
            width: 1000px;
            margin: 0 auto;
         }
         .screen {
            width: 450px;
            margin: 0 auto;
            height: 100%;
         }
         svg, .intercationdiagram {
            width: 412px;
            margin-bottom: 5px;
            padding: 5px;
            border: 1px solid lightgrey;
            background-color: white;
         }

         #interaction {background-color:#f2dbe1}
         #role {background-color:#d7e7ed}
         #activity {background-color:#ffefae}
         #artefact {background-color:#fadec9 /* #f7e4d6 */}
         #other {background-color:#e5e6e8}

         .screenshot {border: 1px solid #ccc; padding:5px; background-color:white; width:200px; margin:5px 10px; float:left;}
 
         .xsnazzy h1, .xsnazzy h2, .xsnazzy p {margin:0 10px;}
         /*
         .xsnazzy h1 {font-size:2.5em; color:#fc0;}
         .xsnazzy h2 {font-size:2em; color:#234; border:0;}
         .xsnazzy h2 {padding-top:0.5em; padding-left:10px;}
         */
         .xsnazzy p {padding-bottom:0.5em; /*color:#f9f9f9;*/}
         .xsnazzy {background: transparent; margin:1em 0;}
         .xsnazzy ul, .xsnazzy li {padding:0 10px; list-style:disc; list-style-position: inside;}
 
         .xsnazzy em {display:block; width:0; height:0; color:#d8d8ee; overflow:hidden; border-top:12px solid #f9f9f9; border-left:12px dotted transparent; border-right:12px dotted transparent; margin-left:50px;}
         /* hack for IE5.5 */
         * html .xsnazzy em {width:24px; height:12px; w\idth:0; hei\ght:0;}
         .xsnazzy span {display:block; width:0; height:0; color:#f9f9f9; overflow:hidden; border-top:10px solid #7f7f9c; border-left:10px dotted transparent; border-right:10px dotted transparent; margin-left:52px; margin-top:-15px;}
         * html .xsnazzy span {width:20px; height:10px; w\idth:0; hei\ght:0;}
 
         .xb1, .xb2, .xb3, .xb4, .xb5, .xb6, .xb7 {display:block; overflow:hidden; font-size:0;}
         .xb1, .xb2, .xb3, .xb4, .xb5, .xb6 {height:1px;}
         .xb4, .xb5, .xb6, .xb7 {background:#ccc; border-left:1px solid #f9f9f9; border-right:1px solid #f9f9f9;}
 
         .xb1 {margin:0 8px; background:#f9f9f9;}
         .xb2 {margin:0 6px; background:#f9f9f9;}
         .xb3 {margin:0 4px; background:#f9f9f9;}
         .xb4 {margin:0 3px; background:#7f7f9c; border-width:0 5px;}

         .xb5 {margin:0 2px; background:#7f7f9c; border-width:0 4px;}
         .xb6 {margin:0 2px; background:#7f7f9c; border-width:0 3px;}
         .xb7 {margin:0 1px; background:#7f7f9c; border-width:0 3px; height:2px;}

         .xboxcontent {display:block; background:#7f7f9c; border:3px solid #f9f9f9; border-width:0 3px;}
      ]]></xsl:text>
    </xsl:template>

</xsl:stylesheet>
