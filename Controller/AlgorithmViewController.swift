//
//  AlgorithmViewController.swift
//  DylanZettler_CSP
//
//  Created by Zettler, Dylan on 11/8/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AlgorithmViewController: UIViewController
{
    // MARK:Data Members
    
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        // TODO: Define algorit and all steps
        let algorithm :String = "These are the instructions to create a project in Java using Eclipse and Github \n"
        let stepOne :String = "First, open Eclipse (Oxygen version)"
        let stepTwo :String = "Second, Pick your directory for your workspace"
        let stepThree :String = "Third, top left arrow down, select Java Project...create new project"
        let stepFour :String = "Fourth, open Github and create new repository, connect it to the same one that is connected to your project and confirm"
        let stepFive :String = "Fifth, undo automatic commit and add .ignore files. Hit commit"
        let stepSix :String = "Sixth, go back to Eclipse, right click on Package Explorer and create a new package"
        let stepSeven :String = "Seventh, right click on the new package and create two classes"
        let stepEight :String = "Eighth, in one of the packages, make a runner, in the other make a controller."
        let stepNine :String = "commit once again in GitHub"
        
        //TODO Finsihing adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "<3"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
