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
        
        resultadosCorrectos = []
        iniciarFotos()
        
       
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var ImagenModificable: UIImageView!

    @IBAction func ButtonContinue(_ sender: Any) {
    }
    
    var contador:Bool = true
    
    func iniciarFotos(){
    

        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if resultadosCorrectos.count <= 4{self.cambiarFotos()}
            else{
                print("Salio del supuesto bucle")
                timer.invalidate()
                //performSegue(withIdentifier: "TerceraPantalla", sender: self)
                
            }
            
        }
        
    }
    func cambiarFotos(){
        
        ImagenModificable.image = UIImage(named: randomizadorDeFotos())
        
        // print("Se ha repetido 1 vez")
    }
    
    func randomizadorDeFotos()->String{
        
        
        var fotoRandom:String = ""
        
        repeat{
            fotoRandom = Fotos.randomElement()!
            
        }while resultadosCorrectos.contains(fotoRandom)
      
        resultadosCorrectos.append(fotoRandom)
        print(resultadosCorrectos)
        return fotoRandom
    }
    
}
