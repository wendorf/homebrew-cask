cask "daedalus-mainnet" do
  version "2.0.1,14017"
  sha256 "3c357a52e607b04bcde242dc244fa0e84a2f47563cc5e3fecd302a789a6f1b56"

  # update-cardano-mainnet.iohk.io/ was verified as official when first introduced to the cask
  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg"
  name "Daedalus Mainnet"
  homepage "https://daedaluswallet.io/"

  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg"

  uninstall pkgutil: "org.Daedalusmainnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Mainnet",
    "~/Library/Preferences/com.electron.daedalus-mainnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-mainnet.savedState",
  ]
end
