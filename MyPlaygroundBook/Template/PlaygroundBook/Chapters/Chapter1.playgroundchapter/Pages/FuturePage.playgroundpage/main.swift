/*:
 # The Future 🗓
 
 At this moment the two spacecraft are in interstellar space, which in a nutshell is where the Sun's gravitational pull loses strength and collides with trails of already dead stars. Not much is known about this part of the space, since the great conquests were after the entry of the ships in this area.

 The image on the right shows a simulation of where they are

 In the year 40,272 Voyager 1 will reach 1.7 light years from an obscure star in the constellation Ursa Minor (Ursa Minor or Ursa Minor) called AC + 79 3888.

 In about 40,000 years, Voyager 2 will reach about 1.7 light years from a star called Ross 248, a small star in the Andromeda galaxy.

 How far can they go? Far (too far!) Can be said. Of course, it is likely that one day they will lose communication with Earth, as their equipment is electronic, but it will continue to move forward ...

 I would like to close this playground with a symbolic image, which perhaps shows a little of the immensity of our universe and how small we are.
 
 And run the code.
 
 */
//#-hidden-code
import PlaygroundSupport
import UIKit
import BookCore

public func seeImage() {
    guard let remoteView = PlaygroundPage.current.liveView as? PlaygroundRemoteLiveViewProxy else {
        fatalError("Always-on live view not configured in this page's LiveView.swift.")
    }
    remoteView.send(.string("image5"))
}
//#-end-hidden-code
//#-editable-code

seeImage() //Run this code to see the most distant image of the Earth

//#-end-editable-code
/*:
 
 This image was the last taken by Voyager 1, on February 14, 1990, at a distance of about 6 billion kilometers. It just looks like any other image from space. But notice a small dot on the right side.

 You found? This is planet Earth!

 Carl Sagan called it Pale Blue Dot. Everything you know, everyone you've ever heard of, every human being who ever existed, who exists, every king, emperor and peasant, every joy and every suffering, every achievement, every economy or ideology, every bloodshed, every child born, each challenge, everything happened there, on that little grain of bread in this immensity of the universe. It's our home.

 */
