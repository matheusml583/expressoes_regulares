function cancelar() {
    var ids = ["nome", "email", "telefone", "sexo"];
    var els = [];
    for (var i = 0; i < ids.length; i++) {
        els[i] = window.document.getElementById(ids[i]).value;
    }
    console.log(els);
}
