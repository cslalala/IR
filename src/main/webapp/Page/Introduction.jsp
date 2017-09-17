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
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
            font-size: 16px;
        }
        ol.suo{
            padding-left: 15px;
        }
        li.dis{
            padding-top: 10px;
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
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-bottom: 0px; padding-top: 0px;" id="menu">
                API
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu" style="width: inherit;text-align: left; display: none;" id="api-menu">
                <li><a href="modeO.jsp">MODE ONE NAME</a></li>
                <li><a href="modeTw.jsp">MODE TWO NAME</a></li>
                <li><a href="modeTh.jsp">MODE THREE NAME</a></li>
            </ul>
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
                <div class="row" style="margin-top: 30px;"><h2 class="blue"><strong>Information Retrieval</strong></h2></div>
                <div class = "row" style="margin-top: 5px;">
                    <p>
                        <img src="./Images/Introduction_1.jpg" align="right" style="width: 500px; height: 500px;">
                        Information retrieval (IR) is the activity of obtaining information resources relevant to an information need from a collection
                        of information resources. Searches can be based on full-text or other content-based indexing. Information retrieval is the
                        science of searching for information in a document, searching for document themselves, searching for metadata that describe data
                        and for databases such as text, image or sound.
                    </p>
                    <p>
                        An information retrieval process begins when a user enters a query into the system.
                        Queries are formal statements of information needs, for example search strings in web search engines. In information retrieval a
                        query does not uniquely identify a single object in the collection. Instead, several objects may match the query, perhaps with
                        different degrees of relevancy.
                    </p>
                    <p>
                        An object is an entity that is represented by information in a content collection or database. User queries are matched against
                        the database information. However, as opposed to classical SQL queries of a database, in information retrieval the results
                        returned may or may not match the query, so results are typically ranked. This ranking of results is a key difference of
                        information retrieval searching compared to database searching.
                    </p>
                    <p>
                        Depending on the application the data objects may be, for example, text documents, images, audio, mind maps[4] or videos.
                        Often the documents themselves are not kept or stored directly in the IR system, but are instead represented in the system
                        by document surrogates or metadata.
                    </p>
                    <p>
                        Most IR systems compute a numeric score on how well each object in the database matches the query, and rank the objects
                        according to this value. The top ranking objects are then shown to the user. The process may then be iterated if the
                        user wishes to refine the query.
                    </p>
                </div>
            </div>
            <div class="container">
                <hr>
            </div>
            <div class="container">
                <div class="row" style="margin-top: 30px;"><h2 class="blue"><strong>Weighting Models and Parameters</strong></h2></div>
                <div class = "row" style="margin-top: 5px;">
                    <p>In this part, we specify the available weighting models we will use for assigning scores to the retrieved documents. We provide
                    implementation of many weighting models:</p>
                    <br/>
                    <ul class="suo">
                        <li class="dis"><i><strong><a href="tf-idf.jsp">tf-idf: </a></strong></i>tf is the term frequency and idf is the inverse document frequency.</li>
                        <li class="dis"><i><strong><a href="tf-idf.jsp">BM25: </a></strong></i>The BM25 probabilistic model.</li>
                        <li class="dis"><i><strong><a href="tf-idf.jsp">DFR-BM25: </a></strong></i>The DFR version of BM25.</li>
                        <li class="dis"><i><strong><a href="tf-idf.jsp">Hiemstra_LM: </a></strong></i>Hiemstra's language model.</li>
                        <li class="dis"><i><strong><a href="tf-idf.jsp">LemurTF_IDF: </a></strong></i>Lemur's version of the tf*idf weighting function.</li>
                    </ul>
                </div>
            </div>
            <div class="container">
                <hr>
            </div>
             <div class="container">
                 <div class="row" style="margin-top: 30px;"><h2 class="blue"><strong>Measure Metrics</strong></h2></div>
                 <div class = "row" style="margin-top: 5px;">
                     <p>In this part, we specify the available weighting models we will use for assigning scores to the retrieved documents. We provide
                         implementation of many weighting models:</p>
                     <br/>
                     <ul class="suo">
                         <li class="dis"><i><strong><a href="tf-idf.jsp">NDCG: </a></strong></i>Normalized Discounted Cumulative Gain</li>
                         <li class="dis"><i><strong><a href="tf-idf.jsp">P: </a></strong></i>P is the precision ratio. Precision is the percentage of all the related documents that are retrieved and the
                         total number of the documents retrieved</li>
                         <li class="dis"><i><strong><a href="tf-idf.jsp">MAP: </a></strong></i>The average accuracy of a single topic is the average of the accuracy of each relevant document. The average accuracy of the main set (MAP) is the average of the average accuracy of each topic.</li>
                     </ul>
                 </div>
             </div>
            <%--<div class="container">--%>
                <%--<div class="row" style="margin-top: 30px;"><h2 class="blue"><strong>Measure Metrics</strong></h2></div>--%>
                <%--<div class = "row" style="margin-top: 5px;">--%>
                    <%--<ul class="suo">--%>
                        <%--<li><i><strong class="large">Discounted cumulative gain</strong></i></li>--%>
                    <%--</ul>--%>
                    <%--<p>--%>
                        <%--<strong>Discounted cumulative gain (DCG)</strong> is a measure of ranking quality. In information retrieval, it is often used to measure effectiveness of web search engine--%>
                        <%--algorithms or related applications. Using a graded relevance scale of documents in a search-engine result set, DCG measures the usefulness, or gain, of a document based on--%>
                        <%--its position in the result list. The gain is accumulated from the top of the result list to the bottom, with the gain of each result discounted at lower ranks.--%>
                    <%--</p>--%>
                    <%--<p>--%>
                        <%--In our system, <i>tf-idf</i> principle and calculation are as follows:--%>
                    <%--</p>--%>
                    <%--<p>--%>
                        <%--Two assumptions are made in using DCG and its related measures.--%>
                    <%--</p>--%>
                    <%--<ol class="suo">--%>
                        <%--<li>Highly relevant documents are more useful when appearing earlier in a search engine result list (have higher ranks)</li>--%>
                        <%--<li>Highly relevant documents are more useful than marginally relevant documents, which are in turn more useful than non-relevant documents.</li>--%>
                    <%--</ol>--%>
                    <%--<p>DCG originates from an earlier, more primitive, measure called Cumulative Gain.</p>--%>
                    <%--<p><strong>Cumulative Gain</strong></p>--%>
                    <%--<p>--%>
                        <%--Cumulative Gain (CG) is the predecessor of DCG and does not include the position of a result in the consideration of the usefulness of a result set. In this way, it is--%>
                        <%--the sum of the graded relevance values of all results in a search result list. The CG at a particular rank position--%>
                        <%--<span>--%>
                            <%--<span style="display: none;">--%>
                                <%--<math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                                    <%--<semantics>--%>
                                        <%--<mrow>--%>
                                            <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                                <%--<mi>p</mi>--%>
                                            <%--</mstyle>--%>
                                        <%--</mrow>--%>
                                        <%--<annotation encoding="application/x-tex">{\displaystyle p}</annotation>--%>
                                    <%--</semantics>--%>
                                <%--</math>--%>
                            <%--</span>--%>
                            <%--<img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36" aria-hidden="true" style="vertical-align: -0.671ex; margin-left: -0.079ex; width:1.259ex; height:2.009ex;" alt="p">--%>
                        <%--</span> is defined as:--%>
                    <%--</p>--%>
                    <%--<dl>--%>
                        <%--<dd><span><span style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                            <%--<semantics>--%>
                                <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                    <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                            <%--<mi mathvariant="normal">C</mi>--%>
                                            <%--<msub>--%>
                                                <%--<mi mathvariant="normal">G</mi>--%>
                                                <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                    <%--<mi mathvariant="normal">p</mi>--%>
                                                <%--</mrow>--%>
                                            <%--</msub>--%>
                                        <%--</mrow>--%>
                                        <%--<mo>=</mo>--%>
                                        <%--<munderover>--%>
                                            <%--<mo>∑<!-- ∑ --></mo>--%>
                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                <%--<mi>i</mi>--%>
                                                <%--<mo>=</mo>--%>
                                                <%--<mn>1</mn>--%>
                                            <%--</mrow>--%>
                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                <%--<mi>p</mi>--%>
                                            <%--</mrow>--%>
                                        <%--</munderover>--%>
                                        <%--<mi>r</mi>--%>
                                        <%--<mi>e</mi>--%>
                                        <%--<msub>--%>
                                            <%--<mi>l</mi>--%>
                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                <%--<mi>i</mi>--%>
                                            <%--</mrow>--%>
                                        <%--</msub>--%>
                                    <%--</mstyle>--%>
                                <%--</mrow>--%>
                                <%--<annotation encoding="application/x-tex">{\displaystyle \mathrm {CG_{p}} =\sum _{i=1}^{p}rel_{i}}</annotation>--%>
                            <%--</semantics>--%>
                        <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/daea2db926c7324e8ed243e6c249a7b75ca2a839"  aria-hidden="true" style="vertical-align: -3.005ex; width:15.202ex; height:7.009ex; margin-left: 44%;" alt="{\mathrm  {CG_{{p}}}}=\sum _{{i=1}}^{{p}}rel_{{i}}"></span></dd>--%>
                    <%--</dl>--%>
                    <%--<p>Where <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                        <%--<semantics>--%>
                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                    <%--<mi>r</mi>--%>
                                    <%--<mi>e</mi>--%>
                                    <%--<msub>--%>
                                        <%--<mi>l</mi>--%>
                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                            <%--<mi>i</mi>--%>
                                        <%--</mrow>--%>
                                    <%--</msub>--%>
                                <%--</mstyle>--%>
                            <%--</mrow>--%>
                            <%--<annotation encoding="application/x-tex">{\displaystyle rel_{i}}</annotation>--%>
                        <%--</semantics>--%>
                    <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/bfa59c4b006428f714ff913dea43de3a51717634" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.671ex; width:3.664ex; height:2.509ex;" alt="rel_{{i}}"></span> is the graded relevance of the result at position <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                        <%--<semantics>--%>
                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                    <%--<mi>i</mi>--%>
                                <%--</mstyle>--%>
                            <%--</mrow>--%>
                            <%--<annotation encoding="application/x-tex">{\displaystyle i}</annotation>--%>
                        <%--</semantics>--%>
                    <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/add78d8608ad86e54951b8c8bd6c8d8416533d20" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.338ex; width:0.813ex; height:2.176ex;" alt="i"></span>.</p>--%>
                    <%--<p>The value computed with the CG function is unaffected by changes in the ordering of search results. That is, moving a highly relevant document <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                        <%--<semantics>--%>
                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                    <%--<msub>--%>
                                        <%--<mi>d</mi>--%>
                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                            <%--<mi>i</mi>--%>
                                        <%--</mrow>--%>
                                    <%--</msub>--%>
                                <%--</mstyle>--%>
                            <%--</mrow>--%>
                            <%--<annotation encoding="application/x-tex">{\displaystyle d_{i}}</annotation>--%>
                        <%--</semantics>--%>
                    <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/abe3154db7d4f92fb42dd1f80f52f528c6312e4a" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.671ex; width:2.026ex; height:2.509ex;" alt="d_{i}"></span> above a higher ranked, less relevant, document <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                        <%--<semantics>--%>
                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                    <%--<msub>--%>
                                        <%--<mi>d</mi>--%>
                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                            <%--<mi>j</mi>--%>
                                        <%--</mrow>--%>
                                    <%--</msub>--%>
                                <%--</mstyle>--%>
                            <%--</mrow>--%>
                            <%--<annotation encoding="application/x-tex">{\displaystyle d_{j}}</annotation>--%>
                        <%--</semantics>--%>
                    <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/3fa3426b07cfa37c76382ddbecfb4c880889657f" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -1.005ex; width:2.136ex; height:2.843ex;" alt="d_{{j}}"></span> does not change the computed value for CG. Based on the two assumptions made above about the usefulness of search results, DCG is used in place of CG for a more accurate measure.</p>--%>
                    <%--<p><strong>Discounted Cumulative Gain</strong></p>--%>
                    <%--<p>The premise of DCG is that highly relevant documents appearing lower in a search result list should be penalized as the graded relevance value is reduced logarithmically proportional to the position of the result. The discounted CG accumulated at a particular rank position <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                        <%--<semantics>--%>
                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                    <%--<mi>p</mi>--%>
                                <%--</mstyle>--%>
                            <%--</mrow>--%>
                            <%--<annotation encoding="application/x-tex">{\displaystyle p}</annotation>--%>
                        <%--</semantics>--%>
                    <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.671ex; margin-left: -0.079ex; width:1.259ex; height:2.009ex;" alt="p"></span> is defined as:</p>--%>
                    <%--<dl>--%>
                        <%--<dd><span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                            <%--<semantics>--%>
                                <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                    <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                            <%--<mi mathvariant="normal">D</mi>--%>
                                            <%--<mi mathvariant="normal">C</mi>--%>
                                            <%--<msub>--%>
                                                <%--<mi mathvariant="normal">G</mi>--%>
                                                <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                    <%--<mi mathvariant="normal">p</mi>--%>
                                                <%--</mrow>--%>
                                            <%--</msub>--%>
                                        <%--</mrow>--%>
                                        <%--<mo>=</mo>--%>
                                        <%--<munderover>--%>
                                            <%--<mo>∑<!-- ∑ --></mo>--%>
                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                <%--<mi>i</mi>--%>
                                                <%--<mo>=</mo>--%>
                                                <%--<mn>1</mn>--%>
                                            <%--</mrow>--%>
                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                <%--<mi>p</mi>--%>
                                            <%--</mrow>--%>
                                        <%--</munderover>--%>
                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                            <%--<mfrac>--%>
                                                <%--<mrow>--%>
                                                    <%--<mi>r</mi>--%>
                                                    <%--<mi>e</mi>--%>
                                                    <%--<msub>--%>
                                                        <%--<mi>l</mi>--%>
                                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                            <%--<mi>i</mi>--%>
                                                        <%--</mrow>--%>
                                                    <%--</msub>--%>
                                                <%--</mrow>--%>
                                                <%--<mrow>--%>
                                                    <%--<msub>--%>
                                                        <%--<mi>log</mi>--%>
                                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                            <%--<mn>2</mn>--%>
                                                        <%--</mrow>--%>
                                                    <%--</msub>--%>
                                                    <%--<mo>⁡<!-- ⁡ --></mo>--%>
                                                    <%--<mo stretchy="false">(</mo>--%>
                                                    <%--<mi>i</mi>--%>
                                                    <%--<mo>+</mo>--%>
                                                    <%--<mn>1</mn>--%>
                                                    <%--<mo stretchy="false">)</mo>--%>
                                                <%--</mrow>--%>
                                            <%--</mfrac>--%>
                                        <%--</mrow>--%>
                                        <%--<mo>=</mo>--%>
                                        <%--<mi>r</mi>--%>
                                        <%--<mi>e</mi>--%>
                                        <%--<msub>--%>
                                            <%--<mi>l</mi>--%>
                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                <%--<mn>1</mn>--%>
                                            <%--</mrow>--%>
                                        <%--</msub>--%>
                                        <%--<mo>+</mo>--%>
                                        <%--<munderover>--%>
                                            <%--<mo>∑<!-- ∑ --></mo>--%>
                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                <%--<mi>i</mi>--%>
                                                <%--<mo>=</mo>--%>
                                                <%--<mn>2</mn>--%>
                                            <%--</mrow>--%>
                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                <%--<mi>p</mi>--%>
                                            <%--</mrow>--%>
                                        <%--</munderover>--%>
                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                            <%--<mfrac>--%>
                                                <%--<mrow>--%>
                                                    <%--<mi>r</mi>--%>
                                                    <%--<mi>e</mi>--%>
                                                    <%--<msub>--%>
                                                        <%--<mi>l</mi>--%>
                                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                            <%--<mi>i</mi>--%>
                                                        <%--</mrow>--%>
                                                    <%--</msub>--%>
                                                <%--</mrow>--%>
                                                <%--<mrow>--%>
                                                    <%--<msub>--%>
                                                        <%--<mi>log</mi>--%>
                                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                            <%--<mn>2</mn>--%>
                                                        <%--</mrow>--%>
                                                    <%--</msub>--%>
                                                    <%--<mo>⁡<!-- ⁡ --></mo>--%>
                                                    <%--<mo stretchy="false">(</mo>--%>
                                                    <%--<mi>i</mi>--%>
                                                    <%--<mo>+</mo>--%>
                                                    <%--<mn>1</mn>--%>
                                                    <%--<mo stretchy="false">)</mo>--%>
                                                <%--</mrow>--%>
                                            <%--</mfrac>--%>
                                        <%--</mrow>--%>
                                    <%--</mstyle>--%>
                                <%--</mrow>--%>
                                <%--<annotation encoding="application/x-tex">{\displaystyle \mathrm {DCG_{p}} =\sum _{i=1}^{p}{\frac {rel_{i}}{\log _{2}(i+1)}}=rel_{1}+\sum _{i=2}^{p}{\frac {rel_{i}}{\log _{2}(i+1)}}}</annotation>--%>
                            <%--</semantics>--%>
                        <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/3efe45491d555db398ed663107460f81d6ecaf1e"  aria-hidden="true" style="vertical-align: -3.005ex; width:50.091ex; height:7.009ex; margin-left: 35%;" alt="{\displaystyle \mathrm {DCG_{p}} =\sum _{i=1}^{p}{\frac {rel_{i}}{\log _{2}(i+1)}}=rel_{1}+\sum _{i=2}^{p}{\frac {rel_{i}}{\log _{2}(i+1)}}}"></span></dd>--%>
                    <%--</dl>--%>
                    <%--<p><strong>Normalized DCG(NDCG)</strong></p>--%>
                    <%--<p><p>Search result lists vary in length depending on the query. Comparing a search engine's performance from one query to the next cannot be consistently achieved using DCG alone, so the cumulative gain at each position for a chosen value of <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                    <%--<semantics>--%>
                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                            <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                <%--<mi>p</mi>--%>
                            <%--</mstyle>--%>
                        <%--</mrow>--%>
                        <%--<annotation encoding="application/x-tex">{\displaystyle p}</annotation>--%>
                    <%--</semantics>--%>
                <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.671ex; margin-left: -0.079ex; width:1.259ex; height:2.009ex;" alt="p"></span> should be normalized across queries. This is done by sorting all <b>relevant</b> documents in the corpus by their relative relevance, producing the maximum possible DCG through position <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                    <%--<semantics>--%>
                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                            <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                <%--<mi>p</mi>--%>
                            <%--</mstyle>--%>
                        <%--</mrow>--%>
                        <%--<annotation encoding="application/x-tex">{\displaystyle p}</annotation>--%>
                    <%--</semantics>--%>
                <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -0.671ex; margin-left: -0.079ex; width:1.259ex; height:2.009ex;" alt="p"></span>, also called Ideal DCG (IDCG) through that position. For a query, the <i>normalized discounted cumulative gain</i>, or nDCG, is computed as:</p></p>--%>
                    <%--<dl>--%>
                        <%--<dd><span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                            <%--<semantics>--%>
                                <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                    <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                            <%--<mi mathvariant="normal">n</mi>--%>
                                            <%--<mi mathvariant="normal">D</mi>--%>
                                            <%--<mi mathvariant="normal">C</mi>--%>
                                            <%--<msub>--%>
                                                <%--<mi mathvariant="normal">G</mi>--%>
                                                <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                    <%--<mi mathvariant="normal">p</mi>--%>
                                                <%--</mrow>--%>
                                            <%--</msub>--%>
                                        <%--</mrow>--%>
                                        <%--<mo>=</mo>--%>
                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                            <%--<mfrac>--%>
                                                <%--<mrow>--%>
                                                    <%--<mi>D</mi>--%>
                                                    <%--<mi>C</mi>--%>
                                                    <%--<msub>--%>
                                                        <%--<mi>G</mi>--%>
                                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                            <%--<mi>p</mi>--%>
                                                        <%--</mrow>--%>
                                                    <%--</msub>--%>
                                                <%--</mrow>--%>
                                                <%--<mrow>--%>
                                                    <%--<mi>I</mi>--%>
                                                    <%--<mi>D</mi>--%>
                                                    <%--<mi>C</mi>--%>
                                                    <%--<msub>--%>
                                                        <%--<mi>G</mi>--%>
                                                        <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                            <%--<mi>p</mi>--%>
                                                        <%--</mrow>--%>
                                                    <%--</msub>--%>
                                                <%--</mrow>--%>
                                            <%--</mfrac>--%>
                                        <%--</mrow>--%>
                                    <%--</mstyle>--%>
                                <%--</mrow>--%>
                                <%--<annotation encoding="application/x-tex">{\displaystyle \mathrm {nDCG_{p}} ={\frac {DCG_{p}}{IDCG_{p}}}}</annotation>--%>
                            <%--</semantics>--%>
                        <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/b3510c9c5cf42ee8820d65335675cada51b40736" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -2.671ex; width:19.508ex; height:6.509ex;margin-left: 44%;" alt="{\mathrm  {nDCG_{{p}}}}={\frac  {DCG_{{p}}}{IDCG_{{p}}}}"></span>,</dd>--%>
                        <%--<p>where:</p>--%>
                        <%--<dl>--%>
                            <%--<dd><span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                                <%--<semantics>--%>
                                    <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                        <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                <%--<mi mathvariant="normal">I</mi>--%>
                                                <%--<mi mathvariant="normal">D</mi>--%>
                                                <%--<mi mathvariant="normal">C</mi>--%>
                                                <%--<msub>--%>
                                                    <%--<mi mathvariant="normal">G</mi>--%>
                                                    <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                        <%--<mi mathvariant="normal">p</mi>--%>
                                                    <%--</mrow>--%>
                                                <%--</msub>--%>
                                            <%--</mrow>--%>
                                            <%--<mo>=</mo>--%>
                                            <%--<munderover>--%>
                                                <%--<mo>∑<!-- ∑ --></mo>--%>
                                                <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                    <%--<mi>i</mi>--%>
                                                    <%--<mo>=</mo>--%>
                                                    <%--<mn>1</mn>--%>
                                                <%--</mrow>--%>
                                                <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                    <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                        <%--<mo stretchy="false">|</mo>--%>
                                                    <%--</mrow>--%>
                                                    <%--<mi>R</mi>--%>
                                                    <%--<mi>E</mi>--%>
                                                    <%--<mi>L</mi>--%>
                                                    <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                        <%--<mo stretchy="false">|</mo>--%>
                                                    <%--</mrow>--%>
                                                <%--</mrow>--%>
                                            <%--</munderover>--%>
                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                <%--<mfrac>--%>
                                                    <%--<mrow>--%>
                                                        <%--<msup>--%>
                                                            <%--<mn>2</mn>--%>
                                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                                <%--<mi>r</mi>--%>
                                                                <%--<mi>e</mi>--%>
                                                                <%--<msub>--%>
                                                                    <%--<mi>l</mi>--%>
                                                                    <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                                        <%--<mi>i</mi>--%>
                                                                    <%--</mrow>--%>
                                                                <%--</msub>--%>
                                                            <%--</mrow>--%>
                                                        <%--</msup>--%>
                                                        <%--<mo>−<!-- − --></mo>--%>
                                                        <%--<mn>1</mn>--%>
                                                    <%--</mrow>--%>
                                                    <%--<mrow>--%>
                                                        <%--<msub>--%>
                                                            <%--<mi>log</mi>--%>
                                                            <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                                <%--<mn>2</mn>--%>
                                                            <%--</mrow>--%>
                                                        <%--</msub>--%>
                                                        <%--<mo>⁡<!-- ⁡ --></mo>--%>
                                                        <%--<mo stretchy="false">(</mo>--%>
                                                        <%--<mi>i</mi>--%>
                                                        <%--<mo>+</mo>--%>
                                                        <%--<mn>1</mn>--%>
                                                        <%--<mo stretchy="false">)</mo>--%>
                                                    <%--</mrow>--%>
                                                <%--</mfrac>--%>
                                            <%--</mrow>--%>
                                        <%--</mstyle>--%>
                                    <%--</mrow>--%>
                                    <%--<annotation encoding="application/x-tex">{\displaystyle \mathrm {IDCG_{p}} =\sum _{i=1}^{|REL|}{\frac {2^{rel_{i}}-1}{\log _{2}(i+1)}}}</annotation>--%>
                                <%--</semantics>--%>
                            <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/0dfdd91ad2b2e59fce87ed6d6e5fa8ddd2678a7b" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -3.005ex; width:26.951ex; height:7.676ex; margin-left: 42%;" alt="{\displaystyle \mathrm {IDCG_{p}} =\sum _{i=1}^{|REL|}{\frac {2^{rel_{i}}-1}{\log _{2}(i+1)}}}"></span></dd>--%>
                            <%--<p>and |REL| represents the list of relevant documents (ordered by their relevance) in the corpus up to position p.</p>--%>
                            <%--<p>The nDCG values for all queries can be averaged to obtain a measure of the average performance of a search engine's ranking algorithm. Note that in a perfect ranking algorithm, the <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                                <%--<semantics>--%>
                                    <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                        <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                            <%--<mi>D</mi>--%>
                                            <%--<mi>C</mi>--%>
                                            <%--<msub>--%>
                                                <%--<mi>G</mi>--%>
                                                <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                    <%--<mi>p</mi>--%>
                                                <%--</mrow>--%>
                                            <%--</msub>--%>
                                        <%--</mstyle>--%>
                                    <%--</mrow>--%>
                                    <%--<annotation encoding="application/x-tex">{\displaystyle DCG_{p}}</annotation>--%>
                                <%--</semantics>--%>
                            <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/7b8f2232a0de1712fc4ecc166a599570c9759efb" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -1.005ex; width:6.615ex; height:2.843ex;" alt="DCG_p"></span> will be the same as the <span class="mwe-math-element"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"><math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                                <%--<semantics>--%>
                                    <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                        <%--<mstyle displaystyle="true" scriptlevel="0">--%>
                                            <%--<mi>I</mi>--%>
                                            <%--<mi>D</mi>--%>
                                            <%--<mi>C</mi>--%>
                                            <%--<msub>--%>
                                                <%--<mi>G</mi>--%>
                                                <%--<mrow class="MJX-TeXAtom-ORD">--%>
                                                    <%--<mi>p</mi>--%>
                                                <%--</mrow>--%>
                                            <%--</msub>--%>
                                        <%--</mstyle>--%>
                                    <%--</mrow>--%>
                                    <%--<annotation encoding="application/x-tex">{\displaystyle IDCG_{p}}</annotation>--%>
                                <%--</semantics>--%>
                            <%--</math></span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/61a3a7ae80590708b279b7a7d22279db10544706" class="mwe-math-fallback-image-inline" aria-hidden="true" style="vertical-align: -1.005ex; width:7.797ex; height:2.843ex;" alt="IDCG_p"></span> producing an nDCG of 1.0. All nDCG calculations are then relative values on the interval 0.0 to 1.0 and so are cross-query comparable.</p>--%>
                        <%--</dl>--%>
                    <%--</dl>--%>
                <%--</div>--%>

        </div>
    </div>
</div>
</body>
<script>
    $("#menu").click(function(){
        if($("#api-menu").css("display") == 'none')
            $("#api-menu").css("display", "block");
        else
            $("#api-menu").css("display", "none");
    });
</script>
</html>


