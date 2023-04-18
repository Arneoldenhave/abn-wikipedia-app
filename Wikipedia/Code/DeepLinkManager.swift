import Foundation

@objc
public final class DeepLinkManager: NSObject, LocationDeepLinkManager {
    

    @objc public static let shared = DeepLinkManager()
    
    private var location: CLLocation?
    
    override private init() {
        super.init()
    }

    public func consumeLocation() -> CLLocation? {
        let tmp = location
        self.location = nil
        return tmp
    }
    
    @objc func setLocation(_ location: CLLocation) {
        self.location = location
    }
}


public protocol LocationDeepLinkManager {
    func consumeLocation() -> CLLocation?
}

