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
    @IBOutlet weak var currentEvoImg: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        name.text = pokemon.name.capitalized
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        
        image.image = img
        currentEvoImg.image = img
        pokeId.text = "\(pokemon.pokedexId)"
        pokemon.downloadPokemonDetail {

            self.updateUI()
        }
        
    }
    
    func updateUI() {
        
        pokeAtck.text = pokemon.attack
        pokeDef.text = pokemon.defense
        pokeHeight.text = pokemon.height
        pokeWeight.text = pokemon.weight
        pokeType.text = pokemon.type
        desc.text = pokemon.description
        
        if pokemon.nextEvolutionId == "" {
            
            pokeEvo.text = "No Evolutions"
            evoImage.isHidden = true
            
        } else {
            
            evoImage.isHidden = false
            evoImage.image = UIImage(named: pokemon.nextEvolutionId)
            let str = "Next Evolution: \(pokemon.nextEvolutionName) - LVL \(pokemon.nextEvolutionLevel)"
            pokeEvo.text = str
        }
    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}

