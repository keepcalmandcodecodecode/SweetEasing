// https://github.com/Quick/Quick

import Quick
import Nimble
import SweetEasing

class LinearEasingSpec: QuickSpec {
    override func spec(){
        var easingFunc:LinearEasing!
        var valuesAndKeyframes:(values:[CGFloat],keytimes:[CGFloat])!
        beforeEach {
            easingFunc = LinearEasing()
            valuesAndKeyframes = SweetEasing.valuesAndKeytimes(10, to: 20, fps: 30, duration: 2, function: easingFunc)
        }
        describe("all values between 0 and 1"){
            it("first keytime is 0"){
                expect(valuesAndKeyframes.keytimes.first) == 0
            }
            it("last keytime is 1"){
                expect(valuesAndKeyframes.keytimes.last) == 1
            }
        }
    }
}