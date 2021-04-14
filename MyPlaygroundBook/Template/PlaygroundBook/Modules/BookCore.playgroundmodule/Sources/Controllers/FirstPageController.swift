//
//  FirstPageController.swift
//  BookCore
//
//  Created by Ronaldo Gomes on 14/04/21.
//

import Foundation
import UIKit

public class FirstPageController: LiveView {
    
    private let image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = false
        image.backgroundColor = .clear
        return image
    }()
    
    private var imageName: String? {
        didSet {
            image.image = UIImage(named: imageName!)
        }
    }
    
    public init(imageName: String = "image1") {
        super.init(nibName: nil, bundle: nil)
        self.imageName = imageName
        image.image = UIImage(named: imageName)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        addConstrainst()
    }
    
    private func addConstrainst() {
        view.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            self.image.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            self.image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            self.image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
    }
}
