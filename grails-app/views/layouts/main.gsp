<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <g:layoutHead/>
        <g:javascript library="application"/>		
    <r:layoutResources />
    <title>Centaurus - Bootstrap Admin Template</title>

    <script type="text/javascript">
        //<![CDATA[
        try {
        if (!window.CloudFlare) {
        var CloudFlare = [{verbose: 0, p: 1429548188, byc: 0, owlid: "cf", bag2: 1, mirage2: 0, oracle: 0, paths: {cloudflare: "/cdn-cgi/nexp/dok3v=1613a3a185/"}, atok: "66e4b5af2913d9dd1d1a52df6e3066a3", petok: "c30d988939c9d77a8e3d6075c76e214c7e705ab7-1430353429-1800", zone: "adbee.technology", rocket: "0", apps: {"ga_key": {"ua": "UA-49262924-2", "ga_bs": "2"}}}];
        !function (a, b) {
        a = document.createElement("script"), b = document.getElementsByTagName("script")[0], a.async = !0, a.src = "//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=7e13c32551/cloudflare.min.js", b.parentNode.insertBefore(a, b)
        }()
        }
        } catch (e) {
        }
        ;
            //]]>
    </script>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'centaurus/css/bootstrap',file:'bootstrap.min.css')}"/>
    <script src="${resource(dir: 'centaurus/js',file:'demo-rtl.js')}"></script>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'centaurus/css/libs', file:'font-awesome.css')}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'centaurus/css/libs', file:'nanoscroller.css')}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'centaurus/css/compiled', file:'layout.css')}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'centaurus/css/compiled', file:'elements.css')}"/>
    <link rel="stylesheet" href="${resource(dir: 'centaurus/css/libs/fullcalendar.css')}"  type="text/css"/>
    <link rel="stylesheet" href="${resource(dir: 'centaurus/css/libs/fullcalendar.print.css')}"  type="text/css" media="print"/>
    <link rel="stylesheet" href="${resource(dir: 'centaurus/css/compiled/calendar.css')}"  type="text/css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'centaurus/css/libs', file:'morris.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'centaurus/css/libs', file:'daterangepicker.css')}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'centaurus/css/libs', file:'jquery-jvectormap-1.2.2.css')}" />





    <link type="image/x-icon" href="favicon.png" rel="shortcut icon"/>

    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400' rel='stylesheet' type='text/css'>
    <!--[if lt IE 9]>
                    <script src="${resource(dir: 'centaurus/js', file: 'html5shiv.js')}" ></script>
                    <script src="${resource(dir: 'centaurus/js', file: 'respond.min.js')}"></script>
            <![endif]-->


</head>
<body>
    <div id="theme-wrapper">
        <header class="navbar" id="header-navbar">
            <div class="container">
                <a href="${request.contextPath}" id="logo" class="navbar-brand">
                    <img src="${resource(dir: 'centaurus/img', file: 'moppg_web.png')}" alt="" class="normal-logo logo-white"/>
                    <img src="${resource(dir: 'centaurus/img', file: 'moppg_web.png')}" alt="" class="normal-logo logo-black"/>
                    <img src="${resource(dir: 'centaurus/img', file: 'moppg_web.png')}" alt="" class="small-logo hidden-xs hidden-sm hidden"/>

                </a>
                <div class="clearfix">
                    <button class="navbar-toggle" data-target=".navbar-ex1-collapse" data-toggle="collapse" type="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars"></span>
                    </button>
                    <div class="nav-no-collapse navbar-left pull-left hidden-sm hidden-xs">
                        <ul class="nav navbar-nav pull-left">
                            <li>
                                <a class="btn" id="make-small-nav">
                                    <i class="fa fa-bars"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="nav-no-collapse pull-right" id="header-nav">
                        <ul class="nav navbar-nav pull-right">
                            <li class="mobile-search">
                                <a class="btn">
                                    <i class="fa fa-search"></i>
                                </a>
                                <div class="drowdown-search">
                                    <form role="search">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Search...">
                                            <i class="fa fa-search nav-search-icon"></i>
                                        </div>
                                    </form>
                                </div>
                            </li>

                            <li class="dropdown profile-dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">


                                    <span class="hidden-xs">
                                        <shiro:hasRole name="Ministerio">Procuraduría General de Justicia </shiro:hasRole>
                                        <shiro:hasRole name="CES"> Secretaria de Seguridad Pública</shiro:hasRole>
                                        <shiro:hasRole name="Juez"> Tribunal Superior de Justicia </shiro:hasRole>
                                        <shiro:hasRole name="Defensor">Instituto Estatal de Defensoría Pública</shiro:hasRole>
                                    </span> <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">


                                    <li><a href="${request.contextPath}/home/profile"><i class="fa fa-user"></i>Usuario</a></li>
                                    <li><a href="#"><i class="fa fa-cog"></i>Configuraciones</a></li>
                                    <li><a href="#"><i class="fa fa-envelope-o"></i>Mensajes</a></li>
                                    <li><g:link controller="auth" action="signOut"><i class="fa fa-power-off"></i>Salir</g:link></li>
                                    </ul>
                                </li>
                                <li class="hidden-xxs">


                            <li><g:link controller="auth" action="signOut"><i class="fa fa-power-off"></i></g:link></li>

                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <div id="page-wrapper" class="container">
            <div class="row">
                <div id="nav-col">
                    <section id="col-left" class="col-left-nano">
                        <div id="col-left-inner" class="col-left-nano-content">
                            <div id="user-left-box" class="clearfix hidden-sm hidden-xs">

                                <img alt="" src="${resource(dir: 'centaurus/img/samples/', file: '')}<shiro:principal/>.jpg"/>

                                <div class="user-box">
                                    <span class="name">Hola<br><user:loggedInUser property="nombre"/><br></span>
                                    <span class="status">
                                        <i class="fa fa-circle"></i> En linea
                                    </span>
                                </div>

                            </div>
                            <div class="collapse navbar-collapse navbar-ex1-collapse" id="sidebar-nav">
                                <ul class="nav nav-pills nav-stacked">
                                    <shiro:hasRole name="Ministerio">
                                        <li class="active">

                                            <a href="${request.contextPath}/home/bandeja?tc=EE">
                                                <i class="fa fa-inbox"></i>
                                                <span>Bandeja de Entrada</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-send"></i>
                                                <span>Docs. Enviados</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-exchange"></i>
                                                <span>Docs. Compartidos</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="dropdown-toggle">
                                                <i class="fa fa-cubes"></i>
                                                <span>Expedientes RED</span>
                                                <i class="fa fa-chevron-circle-right drop-icon"></i>
                                            </a>
                                            <ul class="submenu">
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=CR">
                                                        <i class="fa fa-arrow-circle-o-left"></i>
                                                        <span style="font-size: 10px;">Carpeta de corroboración</span>
                                                        <span class="label label-default label-circle pull-right" id="ntf_Corroboracion"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=DQ">
                                                        <i class="fa fa-slack"></i>
                                                        <span style="font-size: 10px;">Denuncias o querellas</span>
                                                        <span class="label label-default label-circle pull-right" id="ntf_Denuncia"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=IN">
                                                        <i class="fa fa-circle-o"></i>
                                                        <span style="font-size: 10px;">Investigaciones</span> 
                                                        <span class="label label-default label-circle pull-right" id="ntf_Investigacion"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=AT">
                                                        <i class="fa fa-recycle"></i>
                                                        <span style="font-size: 10px;">Archivos temporales</span> 
                                                        <span class="label label-default label-circle pull-right" id="ntf_Investigacion"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=AD">
                                                        <i class="fa fa-dot-circle-o"></i>
                                                        <span style="font-size: 10px;">Archivos definitivos</span> 
                                                        <g:if test="${session.getAttribute("NSIP_NOTIFICACIONES") != null}">

                                                            <span class="label label-default label-circle pull-right" id="ntf_Definitivos"></span>
                                                        </g:if>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=AJ">
                                                        <i class="fa fa-legal"></i>
                                                        <span style="font-size: 10px;">Archivos judicializados</span> 
                                                        <span class="label label-default label-circle pull-right" id="ntf_Definitivos"></span>

                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="not-active">
                                                <i class="fa fa-calendar"></i>
                                                <span style="font-size: 10px;">Itinerario de Audiencias</span>                                                    
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal">
                                                <i class="fa fa-file-word-o"></i>
                                                <span style="font-size: 10px;">Plantillas</span>
                                            </a>
                                        </li>
                                    </shiro:hasRole>


                                    <shiro:hasRole name="CES">
                                        <li class="active">
                                            <a href="${request.contextPath}/home/bandeja?tc=EE">
                                                <i class="fa fa-inbox"></i>
                                                <span>Bandeja de Entrada</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-send"></i>
                                                <span>Docs. Enviados</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-exchange"></i>
                                                <span>Docs. Compartidos</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="dropdown-toggle">
                                                <i class="fa fa-cubes"></i>
                                                <span>Expedientes RED</span>
                                                <i class="fa fa-chevron-circle-right drop-icon"></i>
                                            </a>
                                            <ul class="submenu">
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=II">
                                                        <i class="fa fa-folder-o"></i>
                                                        <span style="font-size: 10px;">Indicios de investigación</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal">
                                                <i  class="fa fa-file-word-o"></i>
                                                <span style="font-size: 10px;">Plantillas</span>
                                            </a>
                                        </li>
                                    </shiro:hasRole> 

                                    <shiro:hasRole name="Juez">
                                        <li class="active">
                                            <a href="${request.contextPath}/home/bandeja?tc=EE">
                                                <i class="fa fa-inbox"></i>
                                                <span>Bandeja de Entrada</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-send"></i>
                                                <span>Docs. Enviados</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-exchange"></i>
                                                <span>Docs. Compartidos</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="dropdown-toggle">
                                                <i class="fa fa-cubes"></i>
                                                <span>Expedientes RED</span>
                                                <i class="fa fa-chevron-circle-right drop-icon"></i>
                                            </a>
                                            <ul class="submenu">
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=CC">
                                                        <i class="fa fa-bookmark"></i>
                                                        <span style="font-size: 10px;">Cuadernillos de Causa</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=CA">
                                                        <i  class="fa fa-navicon"></i>
                                                        <span style="font-size: 10px;">Causa</span>
                                                        <span class="label label-primary label-circle pull-right" id="ntf_Causas"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=PP">
                                                        <i class="fa fa-user"></i>
                                                        <span style="font-size: 10px;">Acción penal por particular</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=CO">
                                                        <i class="fa fa-dot-circle-o"></i>
                                                        <span style="font-size: 10px;">Causa concluida</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="not-active">
                                                <i  class="fa fa-calendar"></i>
                                                <span style="font-size: 10px;">Itinerario de audiencias</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal">
                                                <i  class="fa fa-file-word-o"></i>
                                                <span style="font-size: 10px;">Mis Plantillas</span>
                                            </a>
                                        </li>
                                    </shiro:hasRole>   


                                    <shiro:hasRole name="Defensor">
                                        <li class="active">
                                            <a href="${request.contextPath}/home/bandeja?tc=EE">
                                                <i class="fa fa-inbox"></i>
                                                <span>Bandeja de Entrada</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-send"></i>
                                                <span>Docs. Enviados</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-exchange"></i>
                                                <span>Docs. Compartidos</span>
                                                <span class="label label-info label-circle pull-right">28</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#" class="dropdown-toggle">
                                                <i class="fa fa-cubes"></i>
                                                <span>Expedientes RED</span>
                                                <i class="fa fa-chevron-circle-right drop-icon"></i>
                                            </a>
                                            <ul class="submenu">
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=CI">
                                                        <i class="fa fa-archive"></i>
                                                        <span style="font-size: 10px;">Control Interno</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=CS">
                                                        <i class="fa fa-folder"></i>
                                                        <span style="font-size: 10px;">Casos</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="${request.contextPath}/home/bandeja?tc=CL">
                                                        <i class="fa fa-dot-circle-o"></i>
                                                        <span style="font-size: 10px;">Concluidos</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>

                                        <li>
                                            <a href="#" class="not-active">
                                                <i  class="fa fa-calendar"></i>
                                                <span style="font-size: 10px;">Itinerario de audiencias</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal">
                                                <i class="fa fa-file-word-o"></i>
                                                <span style="font-size: 10px;">Mis Plantillas</span>
                                            </a>
                                        </li>
                                    </shiro:hasRole> 


                                </ul>
                            </div>
                        </div>
                    </section>
                </div>
                <div id="content-wrapper">
                    <g:layoutBody/>  
                    <footer id="footer-bar" class="row">
                        <p id="footer-copyright" class="col-xs-12">
                            &copy; 2015. Powered by: <img height="8%" width="8%" src="${resource(dir: 'centaurus/img', file: 'logo_luc.png')}" alt="">
                            &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; &nbsp;&nbsp; 
                            <img height="5%" width="5%" src="${resource(dir: 'centaurus/img', file: 'logo_tres_i_x_ti.png')}" alt="">

                        </p>
                    </footer>
                </div>
            </div>
        </div>
    </div>
    <div id="config-tool" class="closed">
        <a id="config-tool-cog">
            <i class="fa fa-cog"></i>
        </a>
        <div id="config-tool-options">
            <h4>Opciones de la pagina</h4>
            <ul>
                <li>
                    <div class="checkbox-nice">
                        <input type="checkbox" id="config-fixed-header"/>
                        <label for="config-fixed-header">
                            Encabezado Fijo
                        </label>
                    </div>
                </li>
                <li>
                    <div class="checkbox-nice">
                        <input type="checkbox" id="config-fixed-sidebar"/>
                        <label for="config-fixed-sidebar">
                            Menu izquierdo fijo
                        </label>
                    </div>
                </li>
                <li>
                    <div class="checkbox-nice">
                        <input type="checkbox" id="config-fixed-footer"/>
                        <label for="config-fixed-footer">
                            Pie de pagina fijo
                        </label>
                    </div>
                </li>
                <li>
                    <div class="checkbox-nice">
                        <input type="checkbox" id="config-boxed-layout"/>
                        <label for="config-boxed-layout">
                            Encasillar
                        </label>
                    </div>
                </li>
                <li>
                    <!--div class="checkbox-nice">
                        <input type="checkbox" id="config-rtl-layout"/>
                        <label for="config-rtl-layout">
                            Right-to-Left
                        </label>
                    </div-->
                </li>
            </ul>
            <br/>
            <h4>Apariencia</h4>
            <ul id="skin-colors" class="clearfix">
                <li>
                    <a class="skin-changer" data-skin="" data-toggle="tooltip" title="Default" style="background-color: #2980b9;">
                    </a>
                </li>
                <li>
                    <a class="skin-changer" data-skin="theme-white" data-toggle="tooltip" title="White/Green" style="background-color: #2ecc71;">
                    </a>
                </li>
                <li>
                    <a class="skin-changer blue-gradient" data-skin="theme-blue-gradient" data-toggle="tooltip" title="Gradient">
                    </a>
                </li>
                <li>
                    <a class="skin-changer" data-skin="theme-turquoise" data-toggle="tooltip" title="Green Sea" style="background-color: #1abc9c;">
                    </a>
                </li>
                <li>
                    <a class="skin-changer" data-skin="theme-amethyst" data-toggle="tooltip" title="Amethyst" style="background-color: #9b59b6;">
                    </a>
                </li>
                <li>
                    <a class="skin-changer" data-skin="theme-blue" data-toggle="tooltip" title="Blue" style="background-color: #34495e;">
                    </a>
                </li>
                <li>
                    <a class="skin-changer" data-skin="theme-red" data-toggle="tooltip" title="Red" style="background-color: #e74c3c;">
                    </a>
                </li>
                <li>
                    <a class="skin-changer" data-skin="theme-whbl" data-toggle="tooltip" title="White/Blue" style="background-color: #3498db;">
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <script src="${resource(dir: 'centaurus/js', file: 'demo-skin-changer.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'jquery.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'bootstrap.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'jquery.nanoscroller.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'demo.js')}"></script>  

    <script src="${resource(dir: 'centaurus/js', file: 'jquery-ui.custom.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'fullcalendar.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'jquery.slimscroll.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'raphael-min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'morris.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'moment.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'daterangepicker.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'jquery-jvectormap-1.2.2.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'jquery-jvectormap-world-merc-en.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'gdp-data.js')}"></script>
    <script src="${resource(dir: 'centaurus/js/flot', file: 'jquery.flot.js')}"></script>
    <script src="${resource(dir: 'centaurus/js/flot', file: 'jquery.flot.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js/flot', file: 'jquery.flot.pie.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js/flot', file: 'jquery.flot.stack.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js/flot', file: 'jquery.flot.resize.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js/flot', file: 'jquery.flot.time.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js/flot', file: 'jquery.flot.threshold.js')}"></script>
    <!--script src="${resource(dir: 'centaurus/js', file: 'scripts.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'pace.min.js')}"></script-->

    <!--advanced tables-->
    <!--script src="${resource(dir: 'centaurus/js', file: 'demo-skin-changer.js')}"></script> 
    <script src="${resource(dir: 'centaurus/js', file: 'jquery.js')}"></script> 
    <script src="${resource(dir: 'centaurus/js', file: 'bootstrap.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'jquery.nanoscroller.min.js')}"></script>
    <script src="${resource(dir: 'centaurus/js', file: 'demo.js')}"></script-->   
    <script src="${resource(dir: 'centaurus/js', file: 'jquery.dataTables.js')}"></script> 
    <script src="${resource(dir: 'centaurus/js', file: 'dataTables.fixedHeader.js')}"></script> 
    <script src="${resource(dir: 'centaurus/js', file: 'dataTables.tableTools.js')}"></script> 
    <script src="${resource(dir: 'centaurus/js', file: 'jquery.dataTables.bootstrap.js')}"></script> 
    <!--advanced tables-->

    <script src="${resource(dir: 'centaurus/js', file: 'scripts.js')}"></script> 
    <script src="${resource(dir: 'centaurus/js', file: 'pace.min.js')}"></script> 


    <script src="${resource(dir: 'centaurus/js', file: 'wizard.js')}"></script> 
    <script src="${resource(dir: 'centaurus/js', file: 'jquery.maskedinput.min.js')}"></script> 


    <script src="${resource(dir: 'centaurus/js', file: 'bootstrap-editable.min.js')}"></script> 
    <script src="${resource(dir: 'centaurus/js', file: 'select2.min.js')}"></script> 

    <script src="${resource(dir: 'centaurus/js', file: 'moment.min.js')}"></script> 



    <script>
        $(document).ready(function() {
        var table = $('#table-example').dataTable({
        'info': false,
			'sDom': 'lTfr<"clearfix">tip',
        'oTableTools': {
        'aButtons': [
        {
        'sExtends':    'collection',
                                    'sButtonText': '<i class="fa fa-cloud-download"></i>&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-down"></i>',
        'aButtons':    [ 'csv', 'xls', 'pdf', 'copy', 'print' ]
        }

        ]
        }
        });





        });
    </script>
    <script>
         
        
        
        $(document).ready(function () {
        /* initialize the calendar
        -----------------------------------------------------------------*/

        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();

        var calendar = $('#calendar').fullCalendar({
        header: {
        left: '',
        center: 'title',
        right: 'prev,next'
        },
        isRTL: $('body').hasClass('rtl'), //rtl support for calendar
        selectable: true,
        selectHelper: true,
        select: function (start, end, allDay) {
        var title = prompt('Event Title:');
        if (title) {
        calendar.fullCalendar('renderEvent',
        {
        title: title,
        start: start,
        end: end,
        allDay: allDay
        },
        true // make the event "stick"
        );
        }
        calendar.fullCalendar('unselect');
        },
        editable: true,
        droppable: true, // this allows things to be dropped onto the calendar !!!
        drop: function (date, allDay) { // this function is called when something is dropped

        // retrieve the dropped element's stored Event Object
        var originalEventObject = $(this).data('eventObject');

        // we need to copy it, so that multiple events don't have a reference to the same object
        var copiedEventObject = $.extend({}, originalEventObject);

        // assign it the date that was reported
        copiedEventObject.start = date;
        copiedEventObject.allDay = allDay;

        // copy label class from the event object
        var labelClass = $(this).data('eventclass');

        if (labelClass) {
        copiedEventObject.className = labelClass;
        }

        // render the event on the calendar
        // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
        $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

        // is the "remove after drop" checkbox checked?
        if ($('#drop-remove').is(':checked')) {
        // if so, remove the element from the "Draggable Events" list
        $(this).remove();
        }

        },
        buttonText: {
                        prev: '<i class="fa fa-chevron-left"></i>',
                        next: '<i class="fa fa-chevron-right"></i>'
        },
        events: [
         <g:each in="${agendasAudiencias}" var="audiencia" status="i">
             {   
                id: '${audiencia.id}',
                title: 'Audiencia',
                start: '<g:formatDate format="yyyy-MM-dd" date="${audiencia.inicio}"/>T<g:formatDate format="HH:mm:ss" date="${audiencia.inicio}"/>',
                end: '<g:formatDate format="yyyy-MM-dd" date="${audiencia.fin}"/>T<g:formatDate format="HH:mm:ss" date="${audiencia.fin}"/>',
                allDay: false,
                className: 'label-primary'
            },                                          
            </g:each>
        ]
        });
       
        });
    </script>
    
    
</body>
</html>