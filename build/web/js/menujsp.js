const fila=document.querySelector('.contenedor-carrusel');
const  recomendaciones =document.querySelector('pagina-recomendacion');

const flechaizquierda = document.getElementById('flecha-izquierda');
const flechaderecha = document.getElementById('flecha-derecha');

//?--------------- -----------  event Listener para la flecha derecha ----------------

flechaderecha.addEventListener('click ', () =>{
    
    fila.scrollLeft +=fila.offsetWidth;
    
});

