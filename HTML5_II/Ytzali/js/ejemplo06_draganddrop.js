function manejadorSoltar(ev){
  ev.preventDefault();
  const data = ev.dataTransfer.getData('text');
  ev.target.appendChild(document.getElementById(data));
}

function manejadorArrastrarSobre(ev){
  ev.preventDefault();
}

function manejadorInicioArrastre(ev){
  ev.dataTransfer.setData('text', ev.target.id);
}