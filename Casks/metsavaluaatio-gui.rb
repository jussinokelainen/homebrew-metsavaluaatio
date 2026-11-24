cask "metsavaluaatio-gui" do
    version "0.2.1"
    sha256 "9d0c8624ce9007d77a528806be4f5dfd2aac4c117e62cd772b2284c8b065ef93"

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
