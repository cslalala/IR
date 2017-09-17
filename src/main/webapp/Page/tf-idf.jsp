<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>ICA Introduction</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="./Content/lesspass.min.css">
    <link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

    <%--<link href="./Content/style2.css" rel="stylesheet"/>--%>
    <%--<link href="./Content/default.css" rel="stylesheet"/>--%>
    <link href="./Content/navtop.css" rel="stylesheet"/>
    <link href="./Content/footer.css" rel="stylesheet"/>
    <link href="./Content/home.css" rel="stylesheet"/>
    <link href="./Content/style.css" rel="stylesheet"/>
    <%--<link href="./Content/loginDialog.css" rel="stylesheet"/>--%>
    <link href="./Content/banner.css" rel="stylesheet"/>

    <%--<link href="./Content/modeStyle.css" rel="stylesheet"/>--%>


    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">


    <script src="./Scripts/jquery-1.11.2.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.js"></script>

    <!-- Latest compiled and minified Locales -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.min.js"></script>

    <script src="./Scripts/responsive-nav.js"></script>
    <script src="./Scripts/login.js"></script>
    <script src="./Scripts/layout.js"></script>
    <script src="./Scripts/analytics.js"></script>

    <script src="./Scripts/jquery.validate.js"></script>
    <script src="./Scripts/jquery.validate.unobtrusive.js"></script>
    <!-- 多选框的js,css -->
    <script src="./Scripts/service.js"></script>
    <script src="./Scripts/bootstrap-select.min.js"></script>
    <link rel="stylesheet" href="./Content/bootstrap-select.min.css">
    <style type="text/css">
        .cube1, .cube2 {
            background-color: #f0ad4e;
            width: 30px;
            height: 30px;
            position: relative;
            top: 0;
            left: 0;

            -webkit-animation: cubemove 1.8s infinite ease-in-out;
            animation: cubemove 1.8s infinite ease-in-out;
        }

        .cube2 {
            -webkit-animation-delay: -0.9s;
            animation-delay: -0.9s;
        }

        .caret {
            display: none;
        }

        @-webkit-keyframes cubemove {
            25% {
                -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5)
            }
            50% {
                -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg)
            }
            75% {
                -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5)
            }
            100% {
                -webkit-transform: rotate(-360deg)
            }
        }

        @keyframes cubemove {
            25% {
                transform: translateX(42px) rotate(-90deg) scale(0.5);
                -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5);
            }
            50% {
                transform: translateX(42px) translateY(42px) rotate(-179deg);
                -webkit-transform: translateX(42px) translateY(42px) rotate(-179deg);
            }
            50.1% {
                transform: translateX(42px) translateY(42px) rotate(-180deg);
                -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg);
            }
            75% {
                transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
                -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
            }
            100% {
                transform: rotate(-360deg);
                -webkit-transform: rotate(-360deg);
            }
        }
        .manueldisplay{
            min-width: 1280px;
            background-color: #e0e5e8;
        }
        h2.blue{
            font-size: 34px;
            font-weight: 300;
            max-width: 650px;
            text-align: left;
            margin-left:0px;
            color:#5e90af;
        }
        .description, .step{
            color: #515e66;
            font-size: 18px;
            margin-top: 40px;
        }
        .step{
            text-align: center;
        }
        p{
            font-size: 16px;
            margin-bottom: 5px;
        }
        hr{
            margin-top: 60px;
            margin-bottom: 20px;
            border: 0;
            border-top: 1px solid #e4d4be;

        }
        p.large{
            font-size: 22px;
        }
        strong.large{
            font-size: 22px;
            font-weight: 400;
        }
        ul.suo{
            padding-left: 5%;
            font-size: medium;
            margin-top: 1%;
        }
        ol.suo{
            padding-left: 15px;
        }
        span.center{
            margin-left: 46%;
        }
    </style>
</head>

<body onload="AdjustLayout();">
<div class="nav-top">
    <ul>
        <li>
            <a href="Home.jsp">HOME</a>
        </li>
        <li>
            <a href="Introduction.jsp">INTRODUCTION</a>
        </li>
        <li>
            <a href="Manuel.jsp">MANUAL</a>
        </li>
        <li>
            <a href="modeO.jsp">API</a>
        </li>
        <li>
            <a href="https://concept.research.microsoft.com/Home/Download">DOWNLOAD</a>
        </li>
    </ul>
</div>
<div id="banner">
    <div id="banner-bglayer-noHome">
        <div id="concept">
            <div id="banner-title"> &nbsp;&nbsp;&nbsp;Information Retrieval
                <!-- and Concept Tagging <sup class="rightcorner">Preview</sup></div>-->
                <!-- <%--<div id="banner-title2" >For Short Text Understanding</div>--%> -->
            </div>
        </div>
    </div>
</div>
<div class="manueldisplay">
    <div class="homecontent2" style="padding-left: 0px;">
        <div class="tilecontainer" style="width:1200px; padding-left:25px;">
            <%--<div class="tile toptile">--%>
            <%--<div id="topimg"></div>--%>
            <%--<p style="font-size: large">In this manuel, we will tell you how to use this system in detail.--%>
            <%--</p>--%>
            <%--</div>--%>
            <div class="container">
                <div class="row" style="margin-top: 30px;"><h2 class="blue"><strong><i>tf-idf</i></strong></h2></div>
                <div class = "row" style="margin-top: 5px;">
                    <p>
                        Term frequency-inverse document frequency is a commonly used weighting technique for information retrieval and text mining.
                        tf-idf is a statistical method used to evaluate the importance of a word for one of the filesets or one of the corpus.
                        The importance of the word is proportional to the number of times it appears in the document, but it is inversely proportional
                        to the frequency it appears in the corpus. The various forms of tf-idf weighting are often used by search engine applications
                        as a measure or rating of the degree of correlation between a file and a user's query.
                    </p>
                    <p>
                        In our system, <i>tf-idf</i> principle and calculation are as follows:
                    </p>
                    <p>
                        <strong>Term frequency</strong>
                    </p>
                    <p>
                        In the case of the <b>term frequency</b> <span><i>tf</i>>(<i>t</i>,<i>d</i>)</span>, the simplest choice is to use the <i>raw count</i>
                        of a term in a document, i.e. the number of times that term <span  style="font-style:italic;">t</span> occurs in document
                        <span style="font-style:italic;">d</span>. If we denote the raw count by <span><i>f</i><sub><i>t</i>,<i>d</i></sub></span>,
                        then the simplest tf scheme is:
                    </p>
                    <p>
                        <span class="center"><i>tf</i>(<i>t</i>,<i>d</i>) = <i>f</i><sub><i>t</i>,<i>d</i></sub></span>
                    </p>
                    <p>
                        <strong>Inverse document frequency</strong>
                    </p>
                    <p>
                        The <b>inverse document frequency</b> is a measure of how much information the word provides, that is, whether the term is common
                        or rare across all documents. It is the logarithmically scaled inverse fraction of the documents that contain the word, obtained
                        by dividing the total number of documents by the number of documents containing the term, and then taking the logarithm of that quotient.
                    </p>
                    <img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/ac67bc0f76b5b8e31e842d6b7d28f8949dab7937"
                         aria-hidden="true" style="vertical-align: -2.671ex; width:32.378ex; height:6.176ex; margin-left: 40%;" alt=" \mathrm{idf}(t, D) =  \log \frac{N}{|\{d \in D: t \in d\}|}">
                    <p>with</p>

                    <ul class="suo" type="circle">
                        <li><span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">
                            <semantics>
                                <mrow class="MJX-TeXAtom-ORD">
                                    <mstyle displaystyle="true" scriptlevel="0">
                                        <mi>N</mi>
                                    </mstyle>
                                </mrow>
                                <annotation encoding="application/x-tex">{\displaystyle N}</annotation>
                            </semantics>
                        </math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/f5e3890c981ae85503089652feb48b191b57aae3" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.338ex; width:2.074ex; height:2.176ex;" alt="N"></span>: total number of documents in the corpus <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">
                            <semantics>
                                <mrow class="MJX-TeXAtom-ORD">
                                    <mstyle displaystyle="true" scriptlevel="0">
                                        <mi>N</mi>
                                        <mo>=</mo>
                                        <mrow class="MJX-TeXAtom-ORD">
                                            <mrow class="MJX-TeXAtom-ORD">
                                                <mo stretchy="false">|</mo>
                                            </mrow>
                                            <mi>D</mi>
                                            <mrow class="MJX-TeXAtom-ORD">
                                                <mo stretchy="false">|</mo>
                                            </mrow>
                                        </mrow>
                                    </mstyle>
                                </mrow>
                                <annotation encoding="application/x-tex">{\displaystyle N={|D|}}</annotation>
                            </semantics>
                        </math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/ac5fda2321c816116367dea5a306bdc40727e61e" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.838ex; width:8.432ex; height:2.843ex;" alt="N = {|D|}"></span></li>
                        <li><span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">
                            <semantics>
                                <mrow class="MJX-TeXAtom-ORD">
                                    <mstyle displaystyle="true" scriptlevel="0">
                                        <mrow class="MJX-TeXAtom-ORD">
                                            <mo stretchy="false">|</mo>
                                        </mrow>
                                        <mo fence="false" stretchy="false">{</mo>
                                        <mi>d</mi>
                                        <mo>∈<!-- ∈ --></mo>
                                        <mi>D</mi>
                                        <mo>:</mo>
                                        <mi>t</mi>
                                        <mo>∈<!-- ∈ --></mo>
                                        <mi>d</mi>
                                        <mo fence="false" stretchy="false">}</mo>
                                        <mrow class="MJX-TeXAtom-ORD">
                                            <mo stretchy="false">|</mo>
                                        </mrow>
                                    </mstyle>
                                </mrow>
                                <annotation encoding="application/x-tex">{\displaystyle |\{d\in D:t\in d\}|}</annotation>
                            </semantics>
                        </math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/3ddbc54aba98eaf15ef0f1a0677d3de5c6b4df07" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.838ex; width:16.548ex; height:2.843ex;" alt=" |\{d \in D: t \in d\}| "></span>&nbsp;: number of documents where the term <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">
                            <semantics>
                                <mrow class="MJX-TeXAtom-ORD">
                                    <mstyle displaystyle="true" scriptlevel="0">
                                        <mi>t</mi>
                                    </mstyle>
                                </mrow>
                                <annotation encoding="application/x-tex">{\displaystyle t}</annotation>
                            </semantics>
                        </math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.338ex; width:0.85ex; height:2.009ex;" alt="t"></span> appears (i.e., <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">
                            <semantics>
                                <mrow class="MJX-TeXAtom-ORD">
                                    <mstyle displaystyle="true" scriptlevel="0">
                                        <mrow class="MJX-TeXAtom-ORD">
                                            <mi mathvariant="normal">t</mi>
                                            <mi mathvariant="normal">f</mi>
                                        </mrow>
                                        <mo stretchy="false">(</mo>
                                        <mi>t</mi>
                                        <mo>,</mo>
                                        <mi>d</mi>
                                        <mo stretchy="false">)</mo>
                                        <mo>≠<!-- ≠ --></mo>
                                        <mn>0</mn>
                                    </mstyle>
                                </mrow>
                                <annotation encoding="application/x-tex">{\displaystyle \mathrm {tf} (t,d)\neq 0}</annotation>
                            </semantics>
                        </math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/0b53fe00b6a3d033f183a8f3f0cfae9982206d5a" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.838ex; width:11.024ex; height:2.843ex;" alt=" \mathrm{tf}(t,d) \neq 0"></span>). If the term is not in the corpus, this will lead to a division-by-zero. It is therefore common to adjust the denominator to <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">
                            <semantics>
                                <mrow class="MJX-TeXAtom-ORD">
                                    <mstyle displaystyle="true" scriptlevel="0">
                                        <mn>1</mn>
                                        <mo>+</mo>
                                        <mrow class="MJX-TeXAtom-ORD">
                                            <mo stretchy="false">|</mo>
                                        </mrow>
                                        <mo fence="false" stretchy="false">{</mo>
                                        <mi>d</mi>
                                        <mo>∈<!-- ∈ --></mo>
                                        <mi>D</mi>
                                        <mo>:</mo>
                                        <mi>t</mi>
                                        <mo>∈<!-- ∈ --></mo>
                                        <mi>d</mi>
                                        <mo fence="false" stretchy="false">}</mo>
                                        <mrow class="MJX-TeXAtom-ORD">
                                            <mo stretchy="false">|</mo>
                                        </mrow>
                                    </mstyle>
                                </mrow>
                                <annotation encoding="application/x-tex">{\displaystyle 1+|\{d\in D:t\in d\}|}</annotation>
                            </semantics>
                        </math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/104921c6994a66054acc909a6bb811a47f983a53" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.838ex; width:20.571ex; height:2.843ex;" alt="1 + |\{d \in D: t \in d\}|"></span>.</li>
                    </ul>
                    <p>
                        <strong>Term frequency-Inverse document frequency</strong>
                    </p>
                    <p>
                        Then tf-idf is calculated as
                    </p>
                    <dl>
                        <dd>
                            <span ><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/10109d0e60cc9d50a1ea2f189bac0ac29a030a00" aria-hidden="true" style="vertical-align: -0.838ex; width:32.592ex; height:2.843ex; margin-left:40%" alt="{\displaystyle \mathrm {tfidf} (t,d,D)=\mathrm {tf} (t,d)\cdot \mathrm {idf} (t,D)}"></span></dd>
                    </dl>
                    <p>
                        A high weight in tf-idf is reached by a high term frequency(in the given document) and a low document frequency of the term in the whole
                        collection of documents; the weights hence tend to filter out common terms. Since the ratio inside the idf's log function is always greater
                        than or equal to 1, the value of idf (and tf-idf) is greater than or equal to 0. As a term appears in more documents, the ratio inside the
                        logarithm approaches 1, bringing the idf and tf-idf closer to 0.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
