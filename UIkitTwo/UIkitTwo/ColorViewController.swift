//
//  ColorViewController.swift
//  UIkitTwo
//
//  Created by Никита Горбунов on 01.02.2022.
//

import UIKit

protocol ColorViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class ColorViewController: UIViewController {
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? ViewController else { return }
        viewController.delegate = self
        viewController.viewColor = view.backgroundColor
    }
}

extension ColorViewController: ColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
