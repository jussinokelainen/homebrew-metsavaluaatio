cask "metsavaluaatio-gui" do
    version "0.4.1"
    sha256 "b20954b9f60e1494a9b91ed9431537b1a3e5c266767ec7079fea03bc70b3da12"

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
