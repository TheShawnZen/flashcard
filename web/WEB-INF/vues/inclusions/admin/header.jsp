<%-- 
    Document   : header_admin
    Created on : 2020-11-30, 13:49:59
    Author     : Nadia Garcia
--%>

<header id="main-header" class="py-2 bg-info text-white">
    <div class="container">
        <div class="row">
            <div class="col-md-6"  >
                <h1>
                    Gestion | MemoRosemont</h1>
            </div>
           
           <div class="col-md-6"  >
            <div class="dropdown" style="float:right;">
                <span><h3>Bonjour admin <span style="color:#FF0040">${e.getIdentifiant().split("@")[0]}</span></h3></span>
                <div class="dropdown-content">
                    <a href="menu.jsp"><h4>Menu</h4></a>
                    <a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=logout"><h4>Se déconecter</h4></a>
                    
                </div>
            </div></div>

        </div>

    </div>
</div>
</header>