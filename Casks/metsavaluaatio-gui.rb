cask "metsavaluaatio-gui" do
  version "0.1.3"
  sha256 "5acba05c68695f05ae5d6b3f4262ab3182f226245469687c2d5bf8ce1dac0f83"

  url "https://github.com/jussinokelainen/metsavaluaatio-gui/releases/download/#{version}/Metsavaluaatio-macos.app.zip"

  name "Metsävaluaatio"
  desc "Työpöytäsovellus metsän analysointiin"
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
