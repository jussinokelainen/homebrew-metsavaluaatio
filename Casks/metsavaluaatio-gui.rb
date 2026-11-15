cask "metsavaluaatio-gui" do
    version "0.1.4"
    sha256 "d3a9d6fdfedd403d812ce1f7fd561fe48685997951997c0ed5e31314db5404de"

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
