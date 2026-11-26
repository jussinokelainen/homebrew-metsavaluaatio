cask "metsavaluaatio-gui" do
    version "0.4.0"
    sha256 "4e07e9936bea503e52b40cfc7c0746270cec6e1929a1bf524007f2e43a08db80"

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
