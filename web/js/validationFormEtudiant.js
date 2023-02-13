
$(document).ready(function () {
    $("#signupForm").validate({
        rules: {
            password: {
                required: true,
                minlength: 8
            },
            confirm: {
                required: true,
                equalTo: "#password"
            },
            email: {
                required: true,
                email: true
            }
        },
        messages: {
            password: {
                required: "Veuillez saisir votre mot de passe",
                minlength: "Votre mot de passe doit contenir au moins 8 caracteres"
            },
            confirm: {
                required: "Veuillez confirmer votre mot de passe",
                equalTo: "Veuillez saisir le meme mot de passe"
            },
            email: {
                required: "Veuillez saisir un email valide",
                email: "Veuillez saisir un email valide"    
            }
        }

    });
});

