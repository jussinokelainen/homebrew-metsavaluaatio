cask "metsavaluaatio-gui" do
    version "0.2.0"
    sha256 "dcfd3f11ef2a757fdbb85e76527492e51a7ee1f41f8093221ef52af5a3b17835"

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
