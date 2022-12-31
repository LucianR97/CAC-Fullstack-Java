/* Redirigiendo la página a la compra de tickets */
function comprarTickets(){
    console.log("Hola");
    window.location.href = "#ventaTickets";
}

const form = document.getElementById("form");
const resumen = document.getElementById("resumen");
var costo = 0;
var cobrar = 0;

// Funcion Resumen
form.addEventListener("submit",function(event){
    event.preventDefault();    
    const cantidad = document.getElementById("cantidad").value;
    const categoria = document.getElementById("categoria").value;
    if (parseInt(cantidad)>=1){
        switch (categoria){
            case "Estudiante":
                costo = cantidad*(20/100)*200;
                break;
            case "Trainee":
                costo = cantidad*(50/100)*200;
                break;
            case "Junior":
                costo = cantidad*(85/100)*200;
                break;
            default:
                break        
        }
        costo = Math.round(costo*100)/100;
        resumen.innerHTML = `Total a pagar: $${costo}` ;
    } else { 
        resumen.innerHTML = "Total a pagar:";
    }
})
// Funcion Resetear form
function borrar() {
    form.reset();
    resumen.innerHTML = "Total a pagar:"    
}

// Funcion cerrar navbar al seleccionar un enlace
$('.navbar-nav>li>a').on('click', function(){
    $('.navbar-collapse').collapse('hide');
});
