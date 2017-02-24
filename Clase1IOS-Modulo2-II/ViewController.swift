//
//  ViewController.swift
//  Clase1IOS-Modulo2-II
//
//  Created by alumno on 23/02/17.
//  Copyright © 2017 Rocío Córdova. All rights reserved.
//

import UIKit

//se le agregamos los metodos utilizados para manejar los table view: UITableViewDelegate, UITableViewDataSource

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //debemos seleccionar el tableView y darle al boton del circulo con el ? dentro y arrastramos las opciones de Delegate y DataSource con el ViewControler seleccionando control y soltando sobre el view controler en el listado
    
    //creamos las variables de los elementos que vamos a utilizar
    //asignamos los tipos de elemntos que va a tener el arreglo con el <Elemento>
    
    var arregloElementos = Array<Elemento>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //asignamos los elmentos que vamos a mostrar
        
        for i in 1...10 {
            let elemento = Elemento()
            elemento.numero = "\(i)"
            elemento.descript = "Descripcion larga del elemento \(i)"
            
            if i % 2 == 0 {
                elemento.color = UIColor.magenta
            }else{
                elemento.color = UIColor.blue
            }
            
            arregloElementos.append(elemento)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //agregamos las funciones que utiliza el dataTableView para que no de error los metodos agregados
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloElementos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //asignamos el modelo de la celda al que creamos ElementoTableViewCell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdamodelo", for: indexPath) as! ElementoTableViewCell
        
        let indice = indexPath.row
        let elemento = arregloElementos[indice]
        
        cell.lblNumero.text=elemento.numero
        cell.lblDescripcion.text=elemento.descript
        cell.viewColor.backgroundColor=elemento.color
        
        return cell
        
    }
    
    /*func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "transition", sender: indexPath)
    }*/

    

}

