//
//  GameViewController.swift
//  JuegoFotos3
//
//  Created by Alumnos on 6/11/24.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        iniciarFotos()
        resultadosCorrectos.removeFirst()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var ImagenModificable: UIImageView!

    @IBAction func ButtonContinue(_ sender: Any) {
    }
    
    var contador:Bool = true
    
    func iniciarFotos(){
    

        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
            if self.resultadosCorrectos.count <= 4{self.cambiarFotos()}
            else{
                print("Salio del supuesto bucle")
                
            
            }
            
        }
        
    }
    func cambiarFotos(){
        
        ImagenModificable.image = UIImage(named: randomizadorDeFotos())
        
        // print("Se ha repetido 1 vez")
    }
    
    func randomizadorDeFotos()->String{
        
      
        let Fotos = [
            "MarioHub_Luigi",
            "AnimalCrossing",
            "AnimalCrossing2",
            "character-geeta",
            "character-nemona",
            "MarioHub",
            "MarioKart1",
            "Mariokart2",
            "nintendoSwichtSport",
            "pokemon-iron_valiant",
            "pokemon-walking_wake",
            "switchSport"
        ]
        
        var fotoRandom:String = ""
        
        repeat{
            
            fotoRandom = Fotos.randomElement()!
            
        }while resultadosCorrectos.contains(fotoRandom)
      
        resultadosCorrectos.append(fotoRandom)
        print(resultadosCorrectos)
        return fotoRandom
    }
    
    var resultadosCorrectos = [""]
}
