import Foundation

class MainScene: CCNode {
    
    func playButton() {
        
    let gameplayScene = CCBReader.loadAsScene("Gameplay")
    CCDirector.sharedDirector().presentScene(gameplayScene)
        
    }
    
}
