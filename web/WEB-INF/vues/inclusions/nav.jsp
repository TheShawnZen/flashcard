<nav>            

        <a class="title" href="menu.jsp"> 
            <span>M</span> 
            <span>e</span>
            <span>m</span>
            <span>o</span>
            <span>R</span>
            <span>o</span>
            <span>s</span>
            <span>e</span>
            <span>m</span>
            <span>o</span>
            <span>n</span>
            <span>t</span>  
        </a>       
        
        <!--a class="login float-right" href=""><i class="fas fa-user"></i></a-->
        
        <!--Session d'utilisateur-->
        <% if (session.getAttribute("e") != null) {%>

        <!--Boutons de navigation pour le login -->
        <div class="dropdown float-right "  >
            
            <button class="util" type="button" data-toggle="dropdown">
                <i class="fas fa-user"></i>
            </button>
            <p>Bonjour </br>${nomIdentifiant}</p>
            <div class="dropdown-menu pull-left">
                <a class="dropdown-item" href="${pageContext.request.contextPath}/ControlleurFrontal?accion=modifierUtilisateur">Modifier</a>
                <a class="dropdown-item" href="menu.jsp">Menu</a>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/ControlleurFrontal?accion=logout">Se déconnecter</a>
            </div>
        </div>

    

        <%  } else {%>


        <a href="#" class=" btn btn-primary float-right" role="button"  data-toggle="modal" data-target="#ajouterLoginModal"><img src="https://img.icons8.com/cotton/64/000000/gender-neutral-user--v1.png"/>Se connecter</a>

        <% }%>
  
</nav>
