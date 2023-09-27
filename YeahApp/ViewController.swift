
import UIKit
import YeahAds
import WebKit

class ViewController: UIViewController {
    
    var adView = UIView()
    
    let ads = Yeah_Ads()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewCreation()
        ads.YeahAdsInitialize(id:"29")
    }
    func viewCreation() {
        adView = UIView(frame: CGRect(x: 10, y: 100, width: self.view.frame.size.width - 15, height: 50))
        adView.backgroundColor = UIColor.clear
        self.view.addSubview(adView)
    }
}
extension ViewController {
    @IBAction func bannerAdsAction(_ sender: UIButton) {
        ads.webViewDelegate = self
        ads.YeahAppBannerImageAd()
    }
    @IBAction func interstitialImageAdsAction(_ sender: UIButton) {
        ads.YeahInterstitialImageAds_Load()
        ads.YeahInterstitialImageAds_Show()
    }
    @IBAction func interstitialVideoAdsAction(_ sender: UIButton) {
        ads.YeahInterstitialVideoAds_Load()
        ads.YeahInterstitialVideoAds_Show()
    }
    @IBAction func rewardedVideoAdsAction(_ sender: UIButton) {
        ads.rewardDelegate = self
        ads.YeahRewardedVideoAds_Load()
        ads.YeahRewardedVideoAds_Show()
    }
}
extension ViewController : WebViewUpdateDelegate {
    func updateWebView(webV: WKWebView) {
        DispatchQueue.main.async {
            self.adView.addSubview(webV)
        }
    }
}
extension ViewController : RewardUpdateDelegate {
    func passAPIvalues(point: Array<Dictionary<String, AnyObject>>) {}
}
