# Calculator-Advanced-Swift-iOS13  
## proyect from bootcamp iOS Developer 

###### En este proyecto el objetivo es darle funcionalidades a la Interface que diseñamos en el modulo anterior. A través de este proceso aprenderemos unos conceptos avanzados de swift para que el código sea mas manejable y poder entender la arquitectura que muchos developers aplican, ya que si colaboramos o se vuelve más complejo podamos adaptarnos debido a todas estas herramientas y conceptos . Previamente aprendimos auto layout, las vistas de pila y la configuración de restricciones para crear la interfaz de usuario.

------------

#### Inmersiones acerca de
1. Swift Structures
1. Structures vs Classes
1. Internal/External parameters
1. Access Levels
1. Tuples


------------


##### Patrón de diseño ⚙️
#### Model View Controller (MVC).


##### Model 📘
##### Aquí entra toda la parte lógica del proyecto donde se manejará que debe pasar si el usuario empieza a tapear números más símbolos, proporcionar funciones que realizen operaciones y devolver resultados en función de la entrada del usuario.

- Contiene una estructura llamada `CalculatorLogic`. Tiene dos propiedades privadas: `number`, que es un número opcional que se utiliza para realizar cálculos y `intermediateCalculator`, que es una tupla que almacena el primer número que el usuario ingresa y la operación que se realizará con él.

- La función `setNumber` es una función mutante que toma un número como entrada y lo almacena en la propiedad number.

- La función `calculate`es otra función mutante que toma una cadena que representa un símbolo de operación y realiza la operación correspondiente en el número actual almacenado en la propiedad `number`.

- La función `performTwoNumCalculation` es una función privada que realiza una operación de dos números en base a la operación almacenada en la propiedad `intermediateCalculator` y el número actual ingresado por el usuario.

```swift
import foundation


struct CalculatorLogic {
 private var number: Double?

private var intermediateCalculator: (n1: Double, calcMethod: String)?

 mutating func setNumber(_ number: Double) {
        self.number = number
    }

 mutating func calculate(symbol: String) -> Double? {}

func performTwoNumCalculation(n2: Double) -> Double? {
}
```
------------


##### View 💻

##### La interfaz donde aparecerán todos los elementos visuales en el cuál el usuario va a interactuar, en este caso podrá pulsar los botones para darle vida a la calculadora y poder hacer cuentas.

[![calculator](https://shots.codepen.io/mjijackson/pen/xOzyGX-1280.jpg?version=1470500473 "calculator")](https://www.google.com/url?sa=i&url=https%3A%2F%2Fcodepen.io%2Fmjijackson%2Fpen%2FxOzyGX&psig=AOvVaw1SfszYCJ53DSmIVuQAVzv_&ust=1677949602706000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIiR78GfwP0CFQAAAAAdAAAAABAa "calculator")
------------



##### Controller ⌨️
###### - UIViewController 

##### responde a las interacciones del usuario con la vista

- La clase contiene dos métodos IBAction, calcButtonPressed y numButtonPressed, que se activan cuando el usuario presiona un botón en la calculadora.

-   `calcButtonPressed` Qué debe suceder cuando un botón no numérico es presionado.

-  `numButtonPressed` Qué debe suceder cuando se ingresa un número en el teclado.

- Llamamos a `CalculatorLogic`, el cual se encuentra dentro del archivo `MODEL`, para poder obtener el resultado desde su método de calculo.

- `displayValue` es una propiedad calculada privada que recupera el valor actual de la etiqueta de visualización como Double y establece la etiqueta de visualización en un valor Double determinado.

```swift
class ViewController: UIViewController {

 private var FinishTypingNumer: Bool = true
    
    //computed property
    private var displayValue: Double {}

 private  var calculator = CalculatorLogic()
	
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {}

  @IBAction func numButtonPressed(_ sender: UIButton) {}
```
