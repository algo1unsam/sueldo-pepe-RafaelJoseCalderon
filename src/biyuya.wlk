/**
Implementar en el ObjectBrowser los objetos necesarios para calcular el sueldo de pepe.
El sueldo de pepe se calcula así: sueldo = neto + bono x presentismo + bono x resultados.
El neto es el de la categoría, hay dos categorías: gerentes que ganan $1000 de neto, y cadetes que
ganan $1500.

Hay dos bonos por presentismo:
• en uno es $100 pesos si la persona a quien se aplica no faltó nunca, $50 si faltó un día, $0 en
  cualquier otro caso;
• en el otro es nada.

Hay tres posibilidades para el bono por resultados:
• 10% sobre el neto,
• $80 fijos,
• o nada

Jugar cambiándole a pepe la categoría, la cantidad de días que falta y sus bonos por presentismo y
por resultados; y preguntarle en cada caso su sueldo.

Nota: acá aparecen un montón de objetos, piensen bien a qué objeto le piden cada cosa que hay que
saber para poder llegar al sueldo de pepe. */

//##################################################################################################################
// pepe!!!
object pepe{
	var faltas = 0
	var categoria
	var tipoBonoPresentismo
	var tipoBonoResultado
	
	method categoria(unaCategoria){					// subnivel categoria 
		categoria = unaCategoria}
	
	method tipoBonoPresentismo(unBonoPresentismo){	// subnivel presentismos
		tipoBonoPresentismo = unBonoPresentismo}
	
	method tipoBonoResultado(unBonoResultado){		// subnivel bono resultado
		tipoBonoResultado = unBonoResultado}
	
	method sueldo(){
		return categoria.neto() + tipoBonoPresentismo.valorBono(faltas) + tipoBonoResultado.valorBono(categoria)
		}}

//##################################################################################################################
// categoria
object categoriaCadete{
	method neto(){
		return 1500}}

object categoriaGerente{
	method neto(){
		return 1000}}

//##################################################################################################################
// presentismos
object bonoPresentismoVariable{
	method valorBono(cantidadDeFaltas){
		if(cantidadDeFaltas == 0){
			return 100}
		else if(cantidadDeFaltas == 1){
			return 50}
		else{
			return 0}}}

object bonoPresentismoFijo{
	method valorBono(cantidadDeFaltas){
		return 0}}

//##################################################################################################################
// bono resultado
object bonoResultadoPorcentualSobreElNeto{
	method valorBono(categoria){
		return categoria.neto() * 0.1}}

object bonoResultadoFijo{
	method valorBono(categoria){
		return 80}}

object bonoResultadoNoDevuelveNada{
	method valorBono(categoria){
		return 0}}