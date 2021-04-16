//
//  SecondPage.swift
//  BookCore
//
//  Created by Ronaldo Gomes on 14/04/21.
//

import UIKit
import PlaygroundSupport
import AVFoundation

public class SecondPageControllerWithAudio: LiveView, PlaygroundLiveViewMessageHandler {
    var languageName: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.baselineAdjustment = .alignCenters
        label.textAlignment = .center
        return label
    }()
    
    var audios: [Audios] = []
    var itemsToPlay: [AVPlayerItem] = []
    var allItems: [AVPlayerItem] = Audios.allCases.compactMap {
        if let url = Bundle.main.url(forResource: "GoldenRecord/\($0.rawValue)", withExtension: "au") {
            return AVPlayerItem(url: url)
        } else {
            return nil
        }
        
    }
    let queue = AVQueuePlayer(items: [])

    
    public init(audios: [Audios]) {
        self.audios = audios
            
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        self.view.backgroundColor = .yellow
        
        addConstrainst()
        
        self.audios.forEach {
            if let index = Audios.allCases.firstIndex(of: $0) {
                itemsToPlay.append(allItems[index])
            }
        }
        
        queue.addPeriodicTimeObserver(forInterval: CMTimeMakeWithSeconds(1, preferredTimescale: 1), queue: DispatchQueue.main) { [self] (CMTime) -> Void in
            if let currentItem = queue.currentItem {
                if let index = self.allItems.firstIndex(of: currentItem) {
                    //print(Audios.allCases[index].rawValue)
                    self.languageName.text = Audios.allCases[index].rawValue
                }
            }
            
        }
        
        itemsToPlay.forEach {
            queue.insert($0, after: nil)
        }
        
        queue.play()
    }
    
    private func addConstrainst() {
        view.addSubview(languageName)
        languageName.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.languageName.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            self.languageName.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            self.languageName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            self.languageName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
    }
}

public enum Audios: String, CaseIterable {
    case Akkadian = "Akkadian"
    case Amoy = "Amoy"
    case Arabic = "Arabic"
    case Aramaic = "Aramaic"
    case Armenian = "Armenian"
    case Bengali = "Bengali"
    case Burmese = "Burmese"
    case Cantonese = "Cantonese"
    case Czech = "Czech"
    case Dutch = "Dutch"
    case English = "English"
    case French = "French"
    case German = "German"
    case Greek = "Greek"
    case Gujarati = "Gujarati"
    case Hebrew = "Hebrew"
    case Hindi = "Hindi"
    case Hittite = "Hittite"
    case Hungarian = "Hungarian"
    case Ila = "Ila"
    case Indonesian = "Indonesian"
    case Italian = "Italian"
    case Japanese = "Japanese"
    case Kannada = "Kannada"
    case Kechua = "Kechua"
    case Korean = "Korean"
    case Latin = "Latin"
    case Luganda = "Luganda"
    case Mandarin = "Mandarin"
    case Marathi = "Marathi"
    case Nepali = "Nepali"
    case Nguni = "Nguni"
    case Nyanja = "Nyanja"
    case Oriya = "Oriya"
    case Persian = "Persian"
    case Polish = "Polish"
    case Portuguese = "Portuguese"
    case Punjabi = "Punjabi"
    case Rajasthani = "Rajasthani"
    case Romanian = "Romanian"
    case Russian = "Russian"
    case Serbian = "Serbian"
    case Sinhalese = "Sinhalese"
    case Sotho = "Sotho"
    case Spanish = "Spanish"
    case Sumerian = "Sumerian"
    case Swedish = "Swedish"
    case Telugu = "Telugu"
    case Thai = "Thai"
    case Turkish = "Turkish"
    case Ukrainian = "Ukrainian"
    case Urdu = "Urdu"
    case Vietnamese = "Vietnamese"
    case Welsh = "Welsh"
    case Wu = "Wu"
}

