function cancelar() {
    var ids = ["nome", "email", "telefone", "sexo"];
    for (var i = 0; i < ids.length; i++) {
        window.document.getElementById(ids[i]).value = "";
    }
}
