//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Tiago henrique on 1/20/17.
//  Copyright © 2017 Tiago henrique. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var pokeType: UILabel!
    @IBOutlet weak var pokeHeight: UILabel!
    @IBOutlet weak var pokeWeight: UILabel!
    @IBOutlet weak var pokeDef: UILabel!
    @IBOutlet weak var pokeId: UILabel!
    @IBOutlet weak var pokeAtck: UILabel!
    @IBOutlet weak var pokeEvo: UILabel!
    @IBOutlet weak var evoImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = pokemon.name
        
        pokemon.downloadPokemonDetail{
            self.updateUI()
        }
    }
    
    func updateUI(){
        
    }
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
