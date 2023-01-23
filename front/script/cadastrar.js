function cadastrar() {
    var ids = ["nome", "email", "telefone", "sexo"];
    var els = [];
    for (var i = 0; i < ids.length; i++) {
        els[i] = window.document.getElementById(ids[i]).value;
    }
    fetch("back/crud/create.php", {
        method: "POST",
        body: JSON.stringify(els),
        headers,
    })
        .then((response) => response.text())
        .then((data) => {
            console.log(data);
        });
}
