import AlipaySDK


public class A {
    public class func version() {
        print(AlipaySDK.defaultService().currentVersion() ?? "NAN")
    }
}
