// https://github.com/Quick/Quick

import Quick
import Nimble
import SweetEasing

class EasingFuncSharedConfiguration: QuickConfiguration{
    override class func configure(configuration: Configuration){
        sharedExamples("all keytimes between 0 and 1"){(sharedExampleContext: SharedExampleContext) in
            let easingFunc = sharedExampleContext()["easing"] as! EasingFunction
            let valuesAndKeyframes = SweetEasing.valuesAndKeytimes(10, to: 20, fps: 30, duration: 2, function: easingFunc)
            it("first keytime is 0"){
                expect(valuesAndKeyframes.keytimes.first) == 0
            }
            it("last keytime is 1"){
                expect(valuesAndKeyframes.keytimes.last) == 1
            }
            it("all keytimes between 0 and 1"){
                for keytime in valuesAndKeyframes.keytimes{
                    expect(keytime<=1 && keytime >= 0)
                    
                }
            }
        }
    }
}

class EasingFuncsSpec: QuickSpec {
    override func spec(){
        describe("linear easing: all keytimes between 0 and 1"){
            itBehavesLike("all keytimes between 0 and 1"){
                ["easing":LinearEasing()]
            }
        }
        describe("QuadIn easing: all keytimes between 0 and 1"){
            itBehavesLike("all keytimes between 0 and 1"){
                ["easing":QuadInEasing()]
            }
        }
        describe("CubicIn easing: all keytimes between 0 and 1"){
            itBehavesLike("all keytimes between 0 and 1"){
                ["easing":CubicInEasing()]
            }
        }
        describe("QuartIn easing: all keytimes between 0 and 1"){
            itBehavesLike("all keytimes between 0 and 1"){
                ["easing":QuartInEasing()]
            }
        }
        describe("QuadOut easing: all keytimes between 0 and 1"){
            itBehavesLike("all keytimes between 0 and 1"){
                ["easing":QuadOutEasing()]
            }
        }
        describe("CubicOut easing: all keytimes between 0 and 1"){
            itBehavesLike("all keytimes between 0 and 1"){
                ["easing":CubicOutEasing()]
            }
        }
        describe("QuartOut easing: all keytimes between 0 and 1"){
            itBehavesLike("all keytimes between 0 and 1"){
                ["easing":QuartOutEasing()]
            }
        }
        
        
        
    }
}