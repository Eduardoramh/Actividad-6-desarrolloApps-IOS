import UIKit

//2. Crea el operador para realizar la potencia del valor a a la potencia b en valores enteros.

precedencegroup PowerPrecedence {
 higherThan: MultiplicationPrecedence }

infix operator ++ : PowerPrecedence

func ++ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}


let i2 = 2 ++ 4

//print("2 al 4")

print((2 ++ 4))

print("resultado de 2 a la 4")

print("----------------------------------------------------------------------")

//3. Crea el operador |> para ordenar la colección [2,5,3,4] de menor a mayor.

var coleccion = [2,5,3,4]

prefix operator |>

prefix func |>(sort:String)
{
    let ordenados = coleccion.sorted(by: <)
    print(ordenados)
}

print(coleccion)

|>"sort"

print("----------------------------------------------------------------------")

//4. Del conjunto de datos en el Array [2,3,4,5], crea el subscript para modificar los valores multiplicados por el valor 2 y extrae al valor dado un índice.

let cantidades = [2,3,4,5]

class Cantidad
{
    var valores: [Int]
    init(v:[Int])
     {
     self.valores = v
    }
   
    subscript(idx:Int) -> Int
    {
        get
        {
            return valores [idx]
        }

        set(nuevoValor)
        {
            valores[idx] = nuevoValor
        }
    }
}

let v1 = Cantidad(v: cantidades)

v1[0] = 1
v1[2] = 1

print(cantidades)

//print(v1[0])
v1[0]
//print(v1[2])
v1[2]
print(v1.valores)
print("----------------------------------------------------------------------")
//5. Crear el Struct para definir u obtener la posición para los personajes de tipo Enemigo donde cada posición es de tipo CGPoint aplicando subscritps.

struct personajes {
    var temporal :CGPoint
    init (a:Int, b:Int){
        self.temporal = CGPoint (x:a, y:b)
    }
}

var enemigos = personajes(a:10, b:30)
print(enemigos.temporal.y)
enemigos.temporal.y = 15
print(enemigos.temporal.y)

print("----------------------------------------------------------------------")
//6. Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]

let dictError = ["A": 1, "B":2, "C":3]

func ExisteValor (idx:String)
  {
guard let existe = dictError[idx] else {
    print("No existe")
    return
}
    print("existe \(existe)")
}

ExisteValor(idx:"A")
