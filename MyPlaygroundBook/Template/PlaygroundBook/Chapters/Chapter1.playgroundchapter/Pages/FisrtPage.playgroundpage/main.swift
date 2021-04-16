/*:
 ## What is the Voyager mission?
 
 Imagine that you are in the year 1977. Imagine all the technology of that time, all the limitations, uncertainties, computational power, in short, everything that did not exist at that time and exists today.

 Now imagine an idea, a dream of launching a ship that travels through the solar system and beyond without a final destination, taking photos, sending data and communicating with the earth at all times.

 It seems a little futuristic, but it happened in 1977 and it's been happening until that moment, not just one, but two ships orbiting the space. This is the voyager mission.

 Initially called the Mariner Jupiter / Saturn project, or MJS, it was created in 1972 and was motivated by the discovery of a rare planetary alignment that occurs only once in 176 years. This alignment was discovered by scientists in 1965 and basically said that a spacecraft could benefit from the gravity of the four large gas planets (Jupiter, Saturn, Uranus, Neturn) to be "pushed" to the next.

 The mission was renamed Voyager in 1977, just before its launch. It was divided into two ships, called Voyager 1 and 2.

 This image you see is the launch of Voyager 1.

 Voyager 2 was launched on August 20, 1977. Originally scheduled to launch twelve days after Voyager 2, the launch of Voyager 1 was delayed twice to avoid the problems Voyager 2 experienced after launch. The Voyager 1 launch finally took place on September 5, 1977 and was termed "perfect and accurate".

 Run the code below to see an image that represents the route of the ships since their launch.
 
 */

//#-hidden-code
import PlaygroundSupport
import UIKit

public func newImage() {
    guard let remoteView = PlaygroundPage.current.liveView as? PlaygroundRemoteLiveViewProxy else {
        fatalError("Always-on live view not configured in this page's LiveView.swift.")
    }
    remoteView.send(.string("image2"))
}

//#-end-hidden-code

//#-editable-code
newImage()
//#-end-editable-code

/*:
 
 Although launched sixteen days after Voyager 2, Voyager 1's trajectory was a faster path, arriving at Jupiter in March 1979. Voyager 2 arrived about four months later in July 1979. Both spacecraft were then directed at Saturn. with arrival times in November 1980 (Voyager 1) and August 1981 (Voyager 2). Voyager 2 was then diverted to the remaining gas giants, Uranus (January 1986) and Neptune (August 1989).

 Each Voyager had as main objectives on each planet:

 - Investigate the circulation, dynamics, structure and composition of the planet's atmosphere
 - Characterize the morphology, geology and physical state of the planet's satellites
 - Provide improved values for the mass, size and shape of the planet, its satellites and any rings
 - Determine the structure of the magnetic field and characterize the composition and distribution of the trapped energy particles and the plasma in them

 Today much of what we know about these planets and their surroundings comes from voyagers. However, they exceeded initial expectations. The adventurers' current mission, the Voyager Interstellar Mission (VIM), will explore the outer edge of the Sun's domain. And beyond ...
*/

//:[Next: Golden Record](@next)
