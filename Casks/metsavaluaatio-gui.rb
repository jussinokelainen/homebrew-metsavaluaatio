cask "metsavaluaatio-gui" do
  version "0.1.2"
  sha256 "f05dceebdea3b74f8855b1dc656123fc408bdf5b94cf49e26e3b438d1ec31a5c"

  url "https://github.com/jussinokelainen/metsavaluaatio-gui/releases/download/#{version}/Metsavaluaatio-macos.app.zip"

  name "Metsävaluaatio"
  desc "Metsäomaisuuden arviointi GPUI-työpöytäsovelluksella"
  homepage "https://github.com/jussinokelainen/metsavaluaatio-gui"

  app "Metsavaluaatio.app"

  postflight_steps do
    run "/usr/bin/xattr",
      args: [
        "-dr",
        "com.apple.quarantine",
        "{{appdir}}/Metsavaluaatio.app"
      ]
  end
end
