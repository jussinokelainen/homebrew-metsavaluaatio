cask "metsavaluaatio-gui" do
  version "0.1.1"
  sha256 "8ee07e770e7d1e9d620bba5228088d7751eae2f4d6190f3bc6a16eb6c96cbb74"

  url "https://github.com/jussinokelainen/metsavaluaatio-gui/releases/download/#{version}/Metsavaluaatio-macos.app.zip"

  name "Metsävaluaatio"
  desc "Metsäomaisuuden arviointi GPUI-työpöytäsovelluksella"
  homepage "https://github.com/jussinokelainen/metsavaluaatio-gui"

  app "Metsavaluaatio.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Metsavaluaatio.app"]
  end
end
