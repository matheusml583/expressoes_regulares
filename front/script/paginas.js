function mudar_pagina(page) {
    if (page == 1) {
        window.document.getElementById("container_cadastro").style.display =
            "none";
        window.document.getElementById("container_contatos").style.display =
            "block";
    } else {
        window.document.getElementById("container_cadastro").style.display =
            "block";
        window.document.getElementById("container_contatos").style.display =
            "none";
    }
}
mudar_pagina();
