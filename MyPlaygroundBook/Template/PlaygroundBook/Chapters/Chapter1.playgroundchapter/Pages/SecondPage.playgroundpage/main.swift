/*:
 ## Golden Record
 
 The missions also have a human purpose, to find life outside the Earth and to communicate with it.

 Each Voyager mounted a 12-inch gold-plated copper disc on one side. The disc contains sounds ranging from Beethoven to Chuck Berry's "Johnny B. Goode." and images of the Earth recorded to portray the diversity of life and culture on the planet. Each disc is wrapped in a protective aluminum cover along with a cartridge and a needle.

 Instructions explaining the origin of the spaceship and how to play the disc are recorded on the cover, which you can see on the side.

 It shows the location of the solar system with respect to 14 pulsars, whose precise periods are given.

 The 115 images on the disc were encoded in analog format. Sound selections (including greetings in 55 languages, 35 sounds, natural and artificial, and parts of 27 musical pieces) are designed for playback at 1000 rpm.

 Greetings are something special, as they show how the people of planet earth can welcome you in many ways. Now you can hear them!
 
 #### Note: You must write the languages you want to hear in audios, putting a period in front of them. For example, if you want to hear the message in English, Portuguese and Spanish, you must do:
 
 audios = [.English, .Portuguese, .Spanish]
 
 And run the code.
 
 Remembering that the messages are not the same, each one has its peculiarity!
 */
//#-hidden-code
import PlaygroundSupport
import UIKit
import BookCore

var audios: [Audios] = []
//#-end-hidden-code

//#-editable-code

audios = []

//#-end-editable-code

//#-hidden-code
PlaygroundPage.current.liveView = instantiateLiveView(.secondPageWithAudio , audios)
//#-end-hidden-code
/*:
 
 It is possible that at some point, far beyond, someone or something will find this disk, in the infinity of space. It is incredible to think about it, to know that we have a time capsule traveling into the unknown and that it can last for about 4.5 billion years! We can only imagine how far they can go.

 */

//:[Next: The Ship](@next)
