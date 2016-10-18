//
//  TableViewController.swift
//  TableView y Tab Bar
//
//  Created by Isaac Mac on 17/10/16.
//  Copyright (c) 2016 Isaac Mac. All rights reserved.
//

import Foundation
import UIKit

class TableViewController : UITableViewController{
    
    var datos = [Jugadores]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var jugador1 = Jugadores(nombre: "Isaac", edad: 22, imagen: "1Star")
        var jugador2 = Jugadores(nombre: "Esther", edad: 18, imagen: "2Stars")
        
        datos.append(jugador1)
        datos.append(jugador2)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datos.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as! PlayersTableViewCell
        
        var jugador: Jugadores
        
        jugador = datos[indexPath.row]
        
        cell.lbNombre?.text = jugador.nombre
        cell.img.image = UIImage(named: jugador.getImagen())
        
        return cell
    }
    
    override func tableView(tableView: UITableView,
        didSelectRowAtIndexPath indexPath: NSIndexPath) {
            let titulo = "Mensaje"
            let desc = "Has pulsado a " + datos[indexPath.row].getNombre()
            let ok = "OK"
            
            let alerta = UIAlertController(title: titulo, message: desc, preferredStyle: UIAlertControllerStyle.Alert)
            let botokOk = UIAlertAction(title: ok, style: UIAlertActionStyle.Cancel, handler: nil)
            alerta.addAction(botokOk)
            presentViewController(alerta, animated: true,completion: nil)
            
            
            
    }
}