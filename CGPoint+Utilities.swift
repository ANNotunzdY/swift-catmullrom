extension CGPoint{
    func translate(x: CGFloat, _ y: CGFloat) -> CGPoint {
        return CGPoint(x: self.x + x, y: self.y + y)
    }
    
    func translateX(x: CGFloat) -> CGPoint {
        return CGPoint(x: self.x + x, y: self.y)
    }
    
    func translateY(y: CGFloat) -> CGPoint {
        return CGPoint(x: self.x, y: self.y + y)
    }
    
    func invertY() -> CGPoint {
        return CGPoint(x: self.x, y: -self.y)
    }
    
    func xAxis() -> CGPoint {
        return CGPoint(x: 0, y: self.y)
    }
    
    func yAxis() -> CGPoint {
        return CGPoint(x: self.x, y: 0)
    }
    
    func addTo(a: CGPoint) -> CGPoint {
        return CGPoint(x: self.x + a.x, y: self.y + a.y)
    }
    
    func deltaTo(a: CGPoint) -> CGPoint {
        return CGPoint(x: self.x - a.x, y: self.y - a.y)
    }
    
    func multiplyBy(value:CGFloat) -> CGPoint{
        return CGPoint(x: self.x * value, y: self.y * value)
    }
    
    func length() -> CGFloat {
        return CGFloat(sqrt(CDouble(
            self.x*self.x + self.y*self.y
            )))
    }
    
    func normalize() -> CGPoint {
        let l = self.length()
        return CGPoint(x: self.x / l, y: self.y / l)
    }
    
    public static func fromString(string: String) -> CGPoint {
        var s = string.replacingOccurrences(of: "{", with: "")
        s = s.replacingOccurrences(of: "}", with: "")
        s = s.replacingOccurrences(of: " ", with: "")
        
        let x = NSString(string: s.components(separatedBy: ",").first! as String).doubleValue
        let y = NSString(string: s.components(separatedBy: ",").last! as String).doubleValue
        
        return CGPoint(x: CGFloat(x), y: CGFloat(y))
    }
}
